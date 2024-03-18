<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>캠프로버</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/setting.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/template.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
<script>
    $(document).ready(function() {
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
            url: "conteiner1.do",
            success: function (res_data) {
                $("#conteiner1").html(res_data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
        $.ajax({
            url: "conteiner2.do",
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
  <!-- [E]glamping-N3 -->
  <script src="${pageContext.request.contextPath}/assets/js/setting.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/plugin.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/template.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/common.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
</body>
</html>