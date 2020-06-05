$(document).ready(function () {
    // Common variables
    let url_string = window.location.href;
    let url = new URL(url_string);
    let id_exam = url.searchParams.get("id");
    let examDiv = $("#exam");
    let submit = $("#submit");
    let btnStart = $("#btnStart")
    let timer = $("#timer")
    let duration = 0;

    // Get exam details
    $.ajax({
        url: "/student/ajax/getExamDetails.php",
        type: "POST",
        dataSrc: "",
        dataType: "json",
        data: { id_exam: id_exam },
        success: function (response) {
            if (response.success) {
                // Student can access the exam
                let data = response.data;
                duration = data.duration;

                // Display exam details
                $("#exam_title").html(data.title);
                $("#title").append(" " + data.title);
                $("#class").append(" " + data.class);
                $("#description").append(data.description != null ? " " + data.description : "");
                $("#questions").append(" " + data.questions);
                $("#duration").append(" " + data.duration + " Minutes");

                // Start exam
                btnStart.removeClass("disabled btn-default");
                btnStart.addClass("btn-success");
                btnStart.click(function () {
                    // Notify student
                    if (confirm(
                        "Once you start the exam, closing or refreshing the window or even trying to access " +
                        "another page will ends the exam. ONCE THE EXAM IS ENDED, YOU CAN NOT TAKE IT AGAIN. " +
                        "Are you sure you want to start now!?"
                    )) {
                        // Multi used functions
                        function endExam() {
                            let answers = [];

                            // Get student answers
                            $.each(questions['responseJSON'], function (i, question) {
                                $.each($('.input' + i), function (j, option) {
                                    // Check if student selected any option
                                    if (option.checked) {
                                        let current_option = question.options[j];
                                        answers.push(
                                            {
                                                id_question: question.id_question,
                                                id_option: option.value,
                                                is_true: current_option.is_true
                                            }
                                        );
                                        return false;
                                    } else if (j === 2) {
                                        // Student did not select any option
                                        answers.push(
                                            {
                                                id_question: question.id_question,
                                                id_option: null,
                                                is_true: null
                                            }
                                        );
                                    }
                                });
                            });

                            // Insert answers into database
                            $.ajax({
                                url: "/student/ajax/setExamAnswers.php",
                                type: "POST",
                                dataSrc: "",
                                dataType: "json",
                                data: {
                                    id_exam: id_exam,
                                    answers: answers
                                },
                                success: function (response) {
                                    // Redirect any way
                                    window.location.href = '/student/pages/dashboard.php';
                                }
                            });
                        }
                        function addMinutes(date, minutes) {
                            return new Date(date.getTime() + (minutes * 60000));
                        }

                        // Remove Start Button
                        btnStart.remove();

                        // Timer
                        let current_date = new Date();
                        let current_time = current_date.getTime();
                        let end_date = addMinutes(current_date, duration);
                        let end_time = end_date.getTime();

                        // Update the count down every 1 second
                        let counter = setInterval(function () {

                            // Get current time
                            current_time = new Date().getTime();

                            // Calculate remain_time
                            let remain_time = end_time - current_time;

                            // Time calculations for hours, minutes and seconds
                            let hours = Math.floor((remain_time % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                            let minutes = Math.floor((remain_time % (1000 * 60 * 60)) / (1000 * 60));
                            let seconds = Math.floor((remain_time % (1000 * 60)) / 1000);

                            // Output the result
                            timer.html("Remaining Time: " + hours + "h " + minutes + "m " + seconds + "s");

                            // If the count down is over:
                            if (remain_time <= 0) {
                                clearInterval(counter);
                                timer.html("Time is over...");
                                endExam();
                                window.location.href = "/student/pages/history.php";
                            }
                        }, 1000);

                        // Get questions
                        examDiv.removeClass('hidden');
                        let questions = $.ajax({
                            url: "/student/ajax/getQuestionsList.php",
                            type: "POST",
                            dataSrc: "",
                            dataType: "json",
                            data: { id_exam: id_exam },
                            success: function (data) {
                                // Display questions
                                $.each(data, function (i, question) {
                                    examDiv.append(
                                        // Question Panel
                                        '<div class="panel panel-primary">' +

                                        // Panel Title
                                        '<div class="panel-heading">' +
                                        '<h4 class="panel-title">Q' + (i + 1) + '.</h4>' +
                                        '</div>' +

                                        // Question content
                                        '<div class="panel-body">' +

                                        // Question text
                                        '<p id="question' + i + '" class="text-justify fw-bold mb-15">What is the Question?</p>' +

                                        // Options
                                        '<form>' +

                                        // Option 1
                                        '<div class= "radio">' +
                                        '<label>' +
                                        '<input type="radio" name="optradio" id="optionID' + i + '1" class="input' + i + '" value="option1"/>' +
                                        '<span id="optionText' + i + '1">Option 1</span>' +
                                        '</label >' +
                                        '</div >' +

                                        // Option 2
                                        '<div class= "radio">' +
                                        '<label>' +
                                        '<input type="radio" name="optradio" id="optionID' + i + '2" class="input' + i + '" value="option2"/>' +
                                        '<span id="optionText' + i + '2">Option 2</span>' +
                                        '</label >' +
                                        '</div >' +

                                        // Option 3
                                        '<div class= "radio">' +
                                        '<label>' +
                                        '<input type="radio" name="optradio" id="optionID' + i + '3" class="input' + i + '" value="option3"/>' +
                                        '<span id="optionText' + i + '3">Option 3</span>' +
                                        '</label >' +
                                        '</div >' +

                                        // Clear choice
                                        '<button type="reset" class="btn btn-link btn-reset p-0">Clear My Choice</button>' +

                                        '</form >' +
                                        // Options ends

                                        '</div >' +
                                        // Question content ends

                                        '</div >'
                                        // Question panel ends
                                    );
                                    // Get Questions
                                    $("#question" + i).html(question.question);

                                    // Get Question Options
                                    for (let j = 1; j <= Object.keys(question.options).length; j++) {
                                        $("#optionText" + i + j).html(question.options[j - 1].option);
                                        $("#optionID" + i + j).attr('value', question.options[j - 1].id_option);
                                    }
                                });
                            }
                        });

                        // Submit finish exam        
                        submit.removeClass('hidden');
                        submit.click(function () {
                            if (confirm("Are you sure?")) {
                                endExam();
                            };
                        });

                        // End exam on any refresh or close
                        window.onbeforeunload = function (e) {
                            endExam();
                        };
                    }
                });
            }
        }
    });
});