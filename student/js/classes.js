$(document).ready(function () {
    // Apply DataTable on tblClasses
    let tblClasses = $("#tblClasses");
    tblClasses.DataTable({
        ajax: {
            url: "/student/ajax/getStudentClasses.php",
            dataSrc: ""
        },
        columns: [
            {
                data: "class",
            },
            {
                data: "instructor",
            },
            {
                data: "email",
            },
            {
                data: "total_exams",
            }
        ],
        columnDefs: [
            {
                targets: [3],
                className: 'text-center'
            }
        ],
        paging: false,
        info: false,
        searching: false,
        scrollX: true
    });
});