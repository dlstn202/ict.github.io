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
        markers = [], // 마커를 담을 배열입니다
        currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
        mapOption = { 
            center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };
    
    // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    //-----------------------------------------test-------------------
    // 장소 검색 객체를 생성합니다
    var ps = new kakao.maps.services.Places(map); 
    // 지도에 idle 이벤트를 등록합니다
    kakao.maps.event.addListener(map, 'idle', searchPlaces);

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

    function filter(type){

        $.ajax({
                url: 'info_container_filter.do',
                data:{"type":type},
                success :function(data){
                $("#info_container_list").html(data);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.table(jqXHR);
                }
            });

    }

    function changeContent(type){
        $.ajax({
            url: 'info_container_place.do',
            data: {"type": type},
            success :function(data){
            $("#place_area").html(data);
            
            updateMapForCategory(category);
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
        <div id="map"></div>
        <div id="info_container_list"></div>
    </div>

</body>
</html>