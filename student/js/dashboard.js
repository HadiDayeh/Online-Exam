$(document).ready(function () {
    // Apply DataTable on tblDash
    let tblDash = $("#tblDash");
    tblDash.DataTable({
        ajax: {
            url: "/student/ajax/getDashboardExams.php",
            dataSrc: ""
        },
        columns: [
            {
                data: "class"
            },
            {
                data: "title"
            },
            {
                data: "questions"
            },
            {
                data: "duration",
                render: function (data, type, row) {
                    return data + ' Minutes';
                }
            },
            {
                data: null,
                render: function (data, type, row) {
                    return '<a href="exam.php?id=' + data.id_exam + '"><button class="btn btn-success">Start Exam</button></a>';
                }
            }
        ],
        columnDefs: [
            {
                targets: [2, 3, 4],
                className: 'text-center'
            }
        ],
        paging: false,
        info: false,
        searching: false,
        scrollX: true
    });

    // Start exam (TODO)
});