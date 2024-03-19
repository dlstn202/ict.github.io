<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

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
  <title>커뮤니티_온라인문의 | ㅎ</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/setting.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugin.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/template.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
  <script>
    $(document).ready(function () {

        // $.ajax({
        //     url: "qna_nav.do",
        //     success: function (res_data) {
        //         $("#qna_nav").html(res_data);
        //     },
        //     error: function (jqXHR, textStatus, errorThrown) {
        //         console.table(jqXHR)
        //     }
        // });

        $.ajax({
            url: "qna_header.do",
            success: function (res_data) {
                $("#qna_header").html(res_data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });

        $.ajax({
            url: "qna_content.do",
            success: function (res_data) {
                $("#qna_content").html(res_data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });

        $.ajax({
            url: "qna_footer.do",
            success: function (res_data) {
                $("#qna_footer").html(res_data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });

    })
</script>
</head>

<body>
  <div id="qna_nav"></div>
  <div id="qna_header"></div>
  <div id="qna_content"></div>
  <div id="qna_footer"></div>



  <!-- [E]glamping-N3 -->
  <script src="${pageContext.request.contextPath}/assets/js/setting.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/plugin.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/template.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/common.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
</body>