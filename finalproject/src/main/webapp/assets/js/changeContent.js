function changeContent(type) {
    var content = '';
    if (type === 'camping') {
        content = '<div class="place_list">'
                    + '<div class="place_list_img">'
                        + '<img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">'
                    + '</div>'
                    + '<div class="place_list_content">'
                        + '<div>해쉬태그~~~~~~~~~~~~~~~</div>'
                        + '<div>캠핌장명~~~~~~~~~~</div>'
                        + '<div>주소~~~~~~~~~~~~~~~~</div>'
                        + '<div>한줄소개~~~~~~~~~~~~~~~~~~</div>'
                    + '</div>'
                  + '</div>';
                
    } else if (type === 'hospital') {
        content = '<div class="place_list">'
                    + '<div class="place_list_img">'
                        + '<img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">'
                    + '</div>'
                    + '<div class="place_list_content">'
                        + '<div>해쉬태그~~~~~~~~~~~~~~~</div>'
                        + '<div>병원!!!~~~~~~~~~~</div>'
                        + '<div>주소~~~~~~~~~~~~~~~~</div>'
                        + '<div>한줄소개~~~~~~~~~~~~~~~~~~</div>'
                    + '</div>'
                  + '</div>';
    } else if (type === 'store') {
        content = '<div class="place_list">'
                    + '<div class="place_list_img">'
                        + '<img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">'
                    + '</div>'
                    + '<div class="place_list_content">'
                        + '<div>해쉬태그~~~~~~~~~~~~~~~</div>'
                        + '<div>편의점!!~~~~~~~~~~</div>'
                        + '<div>주소~~~~~~~~~~~~~~~~</div>'
                        + '<div>한줄소개~~~~~~~~~~~~~~~~~~</div>'
                    + '</div>'
                  + '</div>';
    } else if (type === 'mart') {
        content = '<div class="place_list">'
                    + '<div class="place_list_img">'
                        + '<img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">'
                    + '</div>'
                    + '<div class="place_list_content">'
                        + '<div>해쉬태그~~~~~~~~~~~~~~~</div>'
                        + '<div>마트!!!~~~~~~~~~~</div>'
                        + '<div>주소~~~~~~~~~~~~~~~~</div>'
                        + '<div>한줄소개~~~~~~~~~~~~~~~~~~</div>'
                    + '</div>'
                  + '</div>';
    }
    document.getElementById('place_area').innerHTML = content;
}
function list(type){
    
    if (type === 'sido') {
        content = '<div class="place_list">'
                    + '<div class="place_list_img">'
                        + '<img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">'
                    + '</div>'
                    + '<div class="place_list_content">'
                        + '<div>해쉬태그~~~~~~~~~~~~~~~</div>'
                        + '<div>서울 경기 인천~~~~~~~~~~</div>'
                        + '<div>주소~~~~~~~~~~~~~~~~</div>'
                        + '<div>한줄소개~~~~~~~~~~~~~~~~~~</div>'
                    + '</div>'
                  + '</div>';
                
    }else if (type === 'filter') {
        content = '<div class="place_list">'
                    + '<div class="place_list_imgs">'
                        + '<img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">'
                    + '</div>'
                    + '<div class="place_list_content">'
                        + '<div>해쉬태그~~~~~~~~~~~~~~~</div>'
                        + '<div>마트!!!~~~~~~~~~~</div>'
                        + '<div>주소~~~~~~~~~~~~~~~~</div>'
                        + '<div>한줄소개~~~~~~~~~~~~~~~~~~</div>'
                    + '</div>'
                  + '</div>';
    }
    document.getElementById('list').innerHTML = content;
}