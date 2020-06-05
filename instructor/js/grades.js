$(document).ready(function () {
    // Common variables
    let tblGrades = $("#tblGrades");
    let id_selected_exam = null;

    // Fill exams_list with exams
    $.ajax({
        url: "/instructor/ajax/getInstructorExams.php",
        dataType: "json",
        dataSrc: "",
        success: function (data) {
            $.each(data, function (i, ob) {
                if (ob.id_status === "2") {
                    $("#exams_list").append('<option value="' + ob.id_exam + '">' + ob.title + '</option>');
                }
            });
        }
    });

    // Change exams_list value
    let exams_list = $("#exams_list");
    exams_list.change(function () {
        id_selected_exam = exams_list.find(":selected").val();

        // Average function
        jQuery.fn.dataTable.Api.register('average()', function () {
            var data = this.flatten();
            var sum = data.reduce(function (a, b) {
                return (a * 1) + (b * 1); // cast values in-case they are strings
            }, 0);

            return sum / data.length;
        });

        // Apply DataTable on tblGrades        
        tblGrades.DataTable().destroy();
        tblGrades.DataTable({
            ajax: {
                url: "/instructor/ajax/getStudentGrades.php",
                dataSrc: "",
                type: "POST",
                data: { id_exam: id_selected_exam }
            },
            columns: [
                {
                    data: "student"
                },
                {
                    data: "questions"
                },
                {
                    data: "right_answers",
                },
                {
                    data: "wrong_answers",
                },
                {
                    data: "score",
                    render: function (data, type, row) {
                        return data + '%';
                    }
                },
                {
                    data: "date_time",
                    render: function (data, type, row) {
                        return data.substring(0, 16);
                    }
                }
            ],
            footerCallback: function (row, data, start, end, display) {
                var api = this.api(), data;
                let totalStudents = tblGrades.DataTable().rows().count();
                let average = tblGrades.DataTable().column(4).data().average();
                $(api.column(2).footer()).html(
                    totalStudents
                );
                $(api.column(5).footer()).html(
                    Math.round((average * 100)) / 100 + "%"
                );
            },
            columnDefs: [
                {
                    targets: [1, 2, 3, 4, 5],
                    className: 'text-center'
                }
            ],
            paging: false,
            info: false,
            searching: false,
            scrollX: true
        });
    });
});