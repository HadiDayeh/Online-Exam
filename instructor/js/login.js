$(document).ready(function () {
    // Submit instructor_login_form
    let instructor_login_form = $("#instructor_login_form")
    instructor_login_form.on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            url: "/instructor/ajax/instructorLogin.php",
            type: "POST",
            dataSrc: "",
            dataType: "json",
            data: instructor_login_form.serialize(),
            success: function (response) {
                let alertDiv = $("#alert");
                if (response.success) {
                    // Account info is correct -> Redirect to exams page
                    window.location.href = '/instructor/pages/exams.php';
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
