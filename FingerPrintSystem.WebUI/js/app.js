 $(function () {
        GetCustomers(1);
    });
    $(".Pager .page").live("click", function () {
        GetCustomers(parseInt($(this).attr('page')));
    });
    function GetCustomers(pageIndex) {
        $.ajax({
            type: "POST",
            url: "HomegoSchool.aspx/GetCustomers",
            data: '{pageIndex: ' + pageIndex + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                alert(response.d);
            },
            error: function (response) {
                alert(response.d);
            }
        });
    }