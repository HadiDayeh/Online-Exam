$(document).ready(function () {
    // Get student name
    $.ajax({
        url: "/student/ajax/getStudentName.php",
        dataSrc: "",
        dataType: "json",
        success: function (data) {
            $("#first_name").val(data.first_name);
            $("#last_name").val(data.last_name);
        }
    });

    // Submit student_update_form
    let student_update_form = $("#student_update_form");
    student_update_form.on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            url: "/student/ajax/studentUpdate.php",
            type: "POST",
            dataSrc: "",
            dataType: "json",
            data: student_update_form.serialize(),
            success: function (response) {
                let alertDiv = $("#alert");
                if (response.success) {
                    // Profile updated
                    let data = response.data;
                    
                    alertDiv.html(response.message);
                    alertDiv.removeClass("hidden");
                    alertDiv.addClass("alert-success");
                    $("#studentName").html(data.first_name + " " + data.last_name);
                }
            }
        });
    });
});