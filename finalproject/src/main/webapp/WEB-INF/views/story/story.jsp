<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        $(document).ready(function () {
            // main 초기화
            $.ajax({
                url: "nav.do",
                success: function (res_data) {
                    $("#nav").html(res_data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR)
                }
            });
            $.ajax({
                url: "header.do",
                success: function (res_data) {
                    $("#header").html(res_data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR)
                }
            });
            $.ajax({
                url: "story_conteiner1.do",
                success: function (res_data) {
                    $("#conteiner1").html(res_data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR)
                }
            });
            $.ajax({
                url: "story_conteiner2.do",
                success: function (res_data) {
                    $("#conteiner2").html(res_data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR)
                }
            });
            $.ajax({
                url: "footer.do",
                success: function (res_data) {
                    $("#footer").html(res_data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR)
                }
            });

        })
    </script>
</head>

<body>
    <div id="nav"></div>
    <div id="header"></div>
    <div id="conteiner1"></div>
    <div id="conteiner2"></div>
    <div id="footer"></div>
</body>

</html>