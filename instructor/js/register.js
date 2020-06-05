$(document).ready(function () {
    // Submit instructor_register_form
    let instructor_register_form = $("#instructor_register_form");
    instructor_register_form.on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            url: "/instructor/ajax/instructorRegister.php",
            type: "POST",
            dataSrc: "",
            dataType: "json",
            data: instructor_register_form.serialize(),
            success: function (response) {
                let alertDiv = $("#alert");
                if (response.success) {
                    // Register success -> Redirect to exams page
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
})