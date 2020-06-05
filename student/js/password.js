$(document).ready(function () {
    // Submit student_password_form
    let student_password_form = $("#student_password_form");
    student_password_form.on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            url: "/student/ajax/studentPassword.php",
            type: "POST",
            dataSrc: "",
            dataType: "json",
            data: student_password_form.serialize(),
            success: function (response) {
                let alertDiv = $("#alert");
                alertDiv.html(response.message);
                alertDiv.removeClass("hidden");

                // Check response
                if (response.success) {
                    // Password updated
                    alertDiv.removeClass("alert-danger");
                    alertDiv.addClass("alert-success");
                    student_password_form[0].reset();
                } else {
                    // Password not updated
                    alertDiv.removeClass("alert-success");
                    alertDiv.addClass("alert-danger");
                }
            }
        });
    });
});