$(document).ready(function () {
    // Apply DataTable on tblHistory
    let tblHistory = $("#tblHistory");
    tblHistory.DataTable({
        ajax: {
            url: "/student/ajax/getHistoryExams.php",
            dataSrc: ""
        },
        columns: [
            {
                data: "class",
            },
            {
                data: "title",
            },
            {
                data: "questions",
            },
            {
                data: "right_answers",
            },
            {
                data: "wrong_answers",
            },
            {
                data: "score",
                render: function (data, type, row) {
                    return data + '%';
                }
            },
            {
                data: "date_time",
                render: function (data, type, row) {
                    return data.substring(0, 10);
                }
            }
        ],
        columnDefs: [
            {
                targets: [2, 3, 4, 5, 6],
                className: 'text-center'
            }
        ],
        paging: false,
        info: false,
        searching: false,
        scrollX: true
    });
});