$(document).ready(function () {
    // Common variables
    let tblStudents = $("#tblStudents");
    let id_selected_class = null;

    // Fill classes_list with classes
    $.ajax({
        url: "/instructor/ajax/getInstructorClasses.php",
        dataType: "json",
        dataSrc: "",
        success: function (data) {
            $.each(data, function (i, ob) {
                $("#classes_list").append('<option value="' + ob.id_class + '">' + ob.class + '</option>');
            });
        }
    });

    // Change classes_list value    
    let classes_list = $("#classes_list");
    classes_list.change(function () {
        id_selected_class = classes_list.find(":selected").val();

        // Apply DataTable on tblStudents        
        tblStudents.DataTable().destroy();
        tblStudents.DataTable({
            ajax: {
                url: "/instructor/ajax/getClassStudents.php",
                dataSrc: "",
                type: "POST",
                data: { id_class: id_selected_class }
            },
            columns: [
                {
                    data: "student"
                },
                {
                    data: "email",
                },

            ],
            columnDefs: [
                {
                    targets: [0, 1],
                    className: 'text-left'
                }
            ],
            paging: false,
            info: false,
            searching: false,
            scrollX: true
        });
    });

    // Add Student to class
    $("#addStudent").click(function () {
        let student_email = $("#student_email");
        if (id_selected_class != null) {
            if (student_email.val() != '') {
                $.ajax({
                    url: '/instructor/ajax/studentAdd.php',
                    type: 'POST',
                    dataType: "json",
                    data: {
                        id_class: id_selected_class,
                        student_email: student_email.val()
                    },
                    success: function (response) {
                        if (response.success) {
                            // Student was added
                            tblStudents.DataTable().ajax.reload();
                            student_email.val('');

                            alert(response.message);
                        } else {
                            // Student was not added
                            alert(response.message);
                        }
                    }
                });
            } else {
                alert("Please insert the e-mail of the student");
            }
        } else {
            alert("Please select a class first, then insert the e-mail of the student");
        }
    });
});