$(document).ready(function () {
    // Submit student_login_form
    let student_login_form = $("#student_login_form")
    student_login_form.on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            url: "/student/ajax/studentLogin.php",
            type: "POST",
            dataSrc: "",
            dataType: "json",
            data: student_login_form.serialize(),
            success: function (response) {
                let alertDiv = $("#alert");
                if (response.success) {
                    // Account info is correct -> Redirect to dashboard page
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
});
