<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/story.css"/>
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
                url: "story_header.do",
                success: function (res_data) {
                    $("#header").html(res_data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR)
                }
            });
            $.ajax({
                url: "story_container.do",
                success: function (res_data) {
                    $("#container").html(res_data);
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
    <div id="story_header"></div>
    <div id="story_container"></div>
    <div id="footer"></div>
</body>

</html>