
//지도 선언
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
  center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
  level: 10 //지도의 레벨(확대, 축소 정도)
};
var map = new kakao.maps.Map(container, options);


//위도 경도 변수 선언
var we;
var ky;


//moveMapTo function이 지도를 이동시키는 함수입니다.
function moveMapTo(we,ky){
  var markerPosi = new kakao.maps.LatLng(we, ky);
  var marker = new kakao.maps.Marker({
    position: markerPosi
  });
  var moveLatLon = new kakao.maps.LatLng(we, ky);
  map.panTo(moveLatLon);
  marker.setMap(map);
}


//지도와 직접적으로 관련 없는 코드입니다.
var btn = document.getElementById('hi');
btn.addEventListener('click', where);

function where() {
  var loc = document.getElementById('hello').value;
  if (loc == '서울역') {
    we = 35.23174327628654;
    ky = 126.84272705987372;
  }
  moveMapTo(we,ky)
}