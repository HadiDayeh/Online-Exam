$(document).ready(function () {
    // Get instructor name
    $.ajax({
        url: "/instructor/ajax/getInstructorName.php",
        dataSrc: "",
        dataType: "json",
        success: function (data) {
            $("#first_name").val(data.first_name);
            $("#last_name").val(data.last_name);
        }
    });

    // Submit instructor_update_form
    let instructor_update_form = $("#instructor_update_form");
    instructor_update_form.on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            url: "/instructor/ajax/instructorUpdate.php",
            type: "POST",
            dataSrc: "",
            dataType: "json",
            data: instructor_update_form.serialize(),
            success: function (response) {
                let alertDiv = $("#alert");
                if (response.success) {
                    // Profile updated
                    let data = response.data;
                    
                    alertDiv.html(response.message);
                    alertDiv.removeClass("hidden");
                    alertDiv.addClass("alert-success");
                    $("#instructorName").html(data.first_name + " " + data.last_name);
                }
            }
        });
    });
});