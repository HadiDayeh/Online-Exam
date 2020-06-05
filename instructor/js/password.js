$(document).ready(function () {
    // Submit instructor_password_form
    let instructor_password_form = $("#instructor_password_form");
    instructor_password_form.on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            url: "/instructor/ajax/instructorPassword.php",
            type: "POST",
            dataSrc: "",
            dataType: "json",
            data: instructor_password_form.serialize(),
            success: function (response) {
                let alertDiv = $("#alert");
                alertDiv.html(response.message);
                alertDiv.removeClass("hidden");

                // Check response
                if (response.success) {
                    // Password updated
                    alertDiv.removeClass("alert-danger");
                    alertDiv.addClass("alert-success");
                    instructor_password_form[0].reset();
                } else {
                    // Password not updated
                    alertDiv.removeClass("alert-success");
                    alertDiv.addClass("alert-danger");
                }
            }
        });
    });
});