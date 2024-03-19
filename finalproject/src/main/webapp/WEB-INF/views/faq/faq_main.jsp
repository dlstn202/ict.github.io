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
            url: "faq_header.do",
            success: function (res_data) {
                $("#header").html(res_data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
        $.ajax({
            url: "faq_container.do",
            success: function (res_data) {
                $("#container").html(res_data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
        $.ajax({
            url: "faq_footer.do",
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
    <div id="header"></div>
    <div id="container"></div>
    <div id="footer"></div>
  <!-- [E]glamping-N3 C:\git\ict.github.io\finalproject\src\main\webapp\assets\js -->
  <script src="${pageContext.request.contextPath}/assets/js/setting.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/plugin.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/template.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/common.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
</body>
</html>