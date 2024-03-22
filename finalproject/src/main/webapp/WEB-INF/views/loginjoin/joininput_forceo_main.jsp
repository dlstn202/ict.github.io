<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/template.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/setting.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/join.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav.css">
<script>
    $(document).ready(function () {
       // main 초기화
       $.ajax({
           url: "nav.do",
           success: function (res_data) {
                $("#joininput_forceo_nav").html(res_data);
                $.ajax({
                    url: "join_header.do",
                    success: function (res_data) {
                        $("#joininput_forceo_header").html(res_data);
                        $.ajax({
                            url: "joininput_forceo_container.do",
                            success: function (res_data) {
                                $("#joininput_forceo_container").html(res_data);
                                $.getScript("${pageContext.request.contextPath}/assets/js/domain.js");
                                $.ajax({
                                    url: "footer.do",
                                    success: function (res_data) {
                                        $("#joininput_forceo_footer").html(res_data);
                                    },  
                                    error: function (jqXHR, textStatus, errorThrown) {
                                        console.table(jqXHR)
                                    }
                                });
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                console.table(jqXHR)
                            }
                        });
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.table(jqXHR)
                    }
                });
            },
           error: function (jqXHR, textStatus, errorThrown) {
               console.table(jqXHR)
           },
           complete: function () {
               // AJAX 호출이 모두 완료되면 추가적인 스크립트 파일들을 로드합니다.
           //    loadAdditionalScripts();
           }
       });
   })
</script>
<script>
    function loadAdditionalScripts() {
        // 추가적인 스크립트 파일들을 로드합니다.
        // $.getScript("${pageContext.request.contextPath}/assets/js/setting.js");
        // $.getScript("${pageContext.request.contextPath}/assets/js/plugin.js");
        // $.getScript("${pageContext.request.contextPath}/assets/js/template.js");
        // $.getScript("${pageContext.request.contextPath}/assets/js/common.js");
        // $.getScript("${pageContext.request.contextPath}/assets/js/script.js");
    }
 
 </script>
</head>
<body>
    <div id="joininput_forceo_nav"></div>
    <div id="joininput_forceo_header"></div>
    <div id="joininput_forceo_container"></div>
    <div id="joininput_forceo_footer"></div>
</body>
</html>