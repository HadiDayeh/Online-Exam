$(document).ready(function () {
    // Submit student_register_form
    let student_register_form = $("#student_register_form");
    student_register_form.on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            url: "/student/ajax/studentRegister.php",
            type: "POST",
            dataSrc: "",
            dataType: "json",
            data: student_register_form.serialize(),
            success: function (response) {
                let alertDiv = $("#alert");
                if (response.success) {
                    // Register success -> Redirect to dashboard page
                    window.location.href = '/student/pages/dashboard.php';
                } else {
                    // Wrong E-mail or Password
                    alertDiv.html(response.message);
                    alertDiv.removeClass("hidden");
                    alertDiv.addClass("alert-danger");
                }
            }
        });
    });
})