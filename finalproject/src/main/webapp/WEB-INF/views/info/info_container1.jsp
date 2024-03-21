<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    

    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };
        
        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption); 
    </script>

    <script>
        $(document).ready(function(){
                  
            $.ajax({
                url: 'info_container_list.do',
                success :function(data){
                $("#info_container_list").html(data);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR);
                }
            });
      
        });
    </script>

    <!-- <script>
        $(document).ready(function(){
                  
            $.ajax({
            url: 'info_containertest.jsp',
            success :function(data){
                $("#list").html(data);
            }
         });

        });
         

    </script> -->
<script>

    function local(){

        $.ajax({
                url: 'info_container_local.do',
                success :function(data){
                $("#info_container_list").html(data);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR);
                }
            });

    }


</script>
</head>
<body>

    <!-- 지도를 표시할 div 입니다 -->
    <div class="map-container">
        <div id="map" ></div>
        <div id="info_container_list"></div>
    </div>

</body>
</html>