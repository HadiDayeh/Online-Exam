$(document).ready(function () {
    // Apply DataTable on tblClasses
    let tblClasses = $("#tblClasses");
    tblClasses.DataTable({
        ajax: {
            url: "/instructor/ajax/getInstructorClasses.php",
            dataSrc: ""
        },
        columns: [
            {
                data: "class"
            },
            {
                data: "total_students"
            },
            {
                data: "total_exams"
            }
        ],
        columnDefs: [
            {
                targets: [1, 2],
                className: 'text-center'
            }
        ],
        paging: false,
        info: false,
        searching: false,
        scrollX: true
    });

    // Show Modal create_class_modal
    let create_class_modal = $("#create_class_modal");
    $("#createClass").click(function () {
        create_class_modal.modal();
    });

    // Submit create_class_form
    let create_class_form = $("#create_class_form");
    create_class_form.on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            url: "/instructor/ajax/classAdd.php",
            type: "POST",
            dataType: "json",
            data: create_class_form.serialize(),
            success: function (response) {
                if (response.success) {
                    tblClasses.DataTable().ajax.reload();
                    create_class_form[0].reset();
                    create_class_modal.modal("toggle");
                    alert(response.message);
                }
            }
        });
    });
});