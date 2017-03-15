
        $(function () {

            // Proxy created on the fly
            var job = $.connection.myHub;

            // Declare a function on the job hub so the server can invoke it
            job.client.displayStatus = function () {
                getData();
            };

            // Start the connection
            $.connection.hub.start();
            getData();
        });

        function getData() {
            var $tb1 = $('#tb1');
       
            $.ajax({
                url: 'index.aspx/GetData',
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                type: "POST",
                success: function (data) {
                    debugger;
                    if (data.d.length > 0) {
                        var newdata = data.d;
                        $tb1.empty();
                        $tb1.append(' <tr><th>ID</th><th>Name</th><th>Last Executed Date</th><th>Status</th></tr>');
                        var rows = [];
                       
                        for (var i = 0; i < newdata.length; i++) {
                            rows.push(' <tr><td>' + newdata[i].ProductID + '</td><td>' + newdata[i].Name + '</td><td>' + newdata[i].UnitPrice + '</td><td>' + newdata[i].Quantity + '</td></tr>');
                        }

                        $tb1.append(rows.join(''));
                    }
                },
                error: function () {
                    alert("Error");
                }
            });
        }

