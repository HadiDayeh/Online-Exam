$(document).ready(function () {
    // Get class information
    let id_class = $("#class_id").val();
    let class_name = null;
    $.ajax({
        url: "/instructor/ajax/getClass.php",
        type: "POST",
        dataType: "json",
        data: { id_class: id_class },
        success: function (ob) {
            class_name = ob.name;
            $("#class_name").text(class_name);
        }
    });

    // Get exam information
    let exam_title = $("#exam_title").text();
    let description = $("#description").text();
    let questions = $("#questions").text();
    let duration = $("#duration").text();

    // Create panels for each question
    let questionCounter = 1;
    for (i = 1; i <= questions; i++) {
        $("#question_form").append(
            // Question Panel
            '<div class="panel panel-primary">' +

            // Panel Title
            '<div class="panel-heading">' +
            '<h4 class="panel-title">Q' + questionCounter + '.</h4>' +
            '</div>' +

            // Question content
            '<div class="panel-body">' +

            // Question text
            '<p id="question' + questionCounter + '" class="text-justify fw-bold mb-15" contenteditable="true" data-placeholder="Type your question here..."></p>' +

            // Option 1
            '<input type="text" id="option' + questionCounter + '1" placeholder="Option 1 (true answer)" class="form-control mb-10">' +

            // Option 2
            '<input type="text" id="option' + questionCounter + '2" placeholder="Option 2" class="form-control mb-10">' +

            // Option 3
            '<input type="text" id="option' + questionCounter + '3" placeholder="Option 3" class="form-control">' +

            '</div>' +
            // Question content ends

            '</div>'
            // Question panel ends
        )
        questionCounter++;
    };

    // Save exam
    $("#submit").click(function () {
        if (confirm("Are you sure?")) {
            // Prepare questions list
            let questions_list = [];
            for (j = 1; j <= questions; j++) {
                let question = {
                    "question": $("#question" + j).text(),
                    "option1": $("#option" + j + "1").val(),
                    "option2": $("#option" + j + "2").val(),
                    "option3": $("#option" + j + "3").val()
                }
                questions_list.push(question);
            }

            // Save exam in database
            $.ajax({
                url: "/instructor/ajax/examAdd.php",
                type: "POST",
                dataType: "json",
                data: {
                    id_class: id_class,
                    title: exam_title,
                    description: description,
                    questions: questions,
                    duration: duration,
                    questions_list: questions_list
                },
                success: function (response) {
                    if (response.success) {
                        // Exams saved successfully
                        window.location.href = '/instructor/pages/exams.php';
                    }
                }
            });
        }
    });
});