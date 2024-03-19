<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>캠프안내</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/setting.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/template.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/info.css">
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=897d9c3b7e07054fabb6126c0c458f98"></script>
<script>

$(document).ready(function() {
    // main 초기화
    $.ajax({
        url: "info_nav.do",
        success: function(res_data) {
            $("#info_nav").html(res_data);
            
            $.ajax({
                url: "info_container1.do",
                success: function(res_data) {
                    $("#info_container1").html(res_data);
                    
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR);
                }
            });
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.table(jqXHR);
        },
            complete: function () {
                        
                        loadAdditionalScripts();
            }
    });
});


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
    <div id="info_nav"></div>
    <div id="info_container1"></div>
    
</body>
</html>