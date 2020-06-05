$(document).ready(function () {
    // Apply DataTable on tblExams
    let tblExams = $("#tblExams");
    tblExams.DataTable({
        ajax: {
            url: "/instructor/ajax/getInstructorExams.php",
            dataSrc: ""
        },
        columns: [
            {
                data: "class"
            },
            {
                data: "title"
            },
            {
                data: "questions"
            },
            {
                data: "duration",
                render: function (data, type, row) {
                    return data + ' Minutes';
                }
            },
            {
                data: null,
                render: function (data, type, row) {
                    if (data.id_status === '1') {
                        return '<button class="btn btn-success activate w-90">Activate</button>';
                    } else {
                        return '<button class="btn btn-default disabled w-90">Activated</button>';
                    }
                }
            }
        ],
        columnDefs: [
            {
                targets: [2, 3, 4],
                className: 'text-center'
            }
        ],
        paging: false,
        info: false,
        searching: false,
        scrollX: true
    });

    // Activate exam
    $('#tblExams tbody').on('click', '.activate', function () {
        if (confirm("Are you sure?")) {
            let rowData = tblExams.DataTable().row($(this).parents('tr')).data();
            let id_exam = rowData['id_exam'];

            // Update exam status in database
            $.ajax({
                url: "/instructor/ajax/examActivate.php",
                type: "POST",
                dataType: "json",
                data: { id_exam: id_exam },
                success: function (response) {
                    if (response.success) {
                        tblExams.DataTable().ajax.reload();
                    }
                }
            });
        }
    });

    // Show Modal create_exam_modal
    let gotClasses = false;
    $("#createExam").click(function () {
        // Get instructor classes
        if (gotClasses === false) {
            $.ajax({
                url: "/instructor/ajax/getInstructorClasses.php",
                dataType: "json",
                dataSrc: "",
                success: function (data) {
                    $.each(data, function (i, ob) {
                        $("#class_name").append('<option value="' + ob.id_class + '">' + ob.class + '</option>');
                    });
                }
            });
            gotClasses = true;
        }
        $("#create_exam_modal").modal();
    });
});