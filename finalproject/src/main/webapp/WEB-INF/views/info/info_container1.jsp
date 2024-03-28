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
        currCategory = '', // 현재 선택된 카테고리를 가지고 있을 변수입니다
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

    //카테고리 검색을 요청하는 함수입니다
    function searchPlaces() {
        if (!currCategory) {
            return;
        }
        // 지도에 표시되고 있는 마커를 제거합니다
        removeMarker();
    
    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 

    }
    // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
    function placesSearchCB(data, status, pagination) {
        if (status === kakao.maps.services.Status.OK) {

            // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
            displayPlaces(data);
        } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
            // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

        } else if (status === kakao.maps.services.Status.ERROR) {
            // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
            
        }
    }
    // 지도에 마커를 표출하는 함수입니다
    function displayPlaces(places) {
    
    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
    var order = document.getElementById(currCategory).getAttribute('data-order');



        for ( var i=0; i<places.length; i++ ) {

                // 마커를 생성하고 지도에 표시합니다
                var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);

                // 마커와 검색결과 항목을 클릭 했을 때
                // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
                (function(marker, place) {
                    kakao.maps.event.addListener(marker, 'click', function() {
                        displayPlaceInfo(place);
                    });
                })(marker, places[i]);
        }
    }
    // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, order) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

function CategoryClickEvent() {
    
    //var category = document.getElementsByClassName('place_select_kind');
    
    searchPlaces();

}
// 카테고리를 클릭했을 때 호출되는 함수입니다
function onClickCategory() {
    var id = this.id,
        className = this.className;

    placeOverlay.setMap(null);

    if (className === 'on') {
        currCategory = '';
        changeCategoryClass();
        removeMarker();
    } else {
        currCategory = id;
        changeCategoryClass(this);
        searchPlaces();
    }
}

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
            currCategory = type;
            
            CategoryClickEvent();
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