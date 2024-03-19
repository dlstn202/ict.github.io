<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="imagetoolbar" content="no">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="title" content="웹사이트">
        <meta name="description" content="웹사이트입니다.">
        <meta name="keywords" content="키워드,키워드,키워드">
        <meta property="og:title" content="웹사이트">
        <meta property="og:description" content="웹사이트입니다">
        <meta property="og:image" content="https://웹사이트/images/opengraph.png">
        <meta property="og:url" content="https://웹사이트">
        <title>커뮤니티_공지사항</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/setting.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugin.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/template.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reservation.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
        <script>
            $(document).ready(function () {
                // main 초기화
                $.ajax({
                    url: "renav.do",
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
                    url: "container.do",
                    success: function (res_data) {
                        $("#container1").html(res_data);
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
                    },
                    complete: function () {
                        // AJAX 호출이 모두 완료되면 추가적인 스크립트 파일들을 로드합니다.
                        loadAdditionalScripts();
                    }
                });

            })
        </script>
        <script>
            function loadAdditionalScripts() {
                // 추가적인 스크립트 파일들을 로드합니다.
                $.getScript("${pageContext.request.contextPath}/assets/js/setting.js");
                $.getScript("${pageContext.request.contextPath}/assets/js/plugin.js");
                $.getScript("${pageContext.request.contextPath}/assets/js/template.js");
                $.getScript("${pageContext.request.contextPath}/assets/js/common.js");
                $.getScript("${pageContext.request.contextPath}/assets/js/script.js");
            }

        </script>
    </head>

    <body>

        <div id="header"></div>
        <div id="container1"></div>
        <div id="container2"></div>
        <div id="footer"></div>
    </body>

    </html>