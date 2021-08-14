var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
  center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
  level: 5 //지도의 레벨(확대, 축소 정도)
};


var map = new kakao.maps.Map(container, options);

var markerPosi = new kakao.maps.LatLng(we, ky);
var marker = new kakao.maps.Marker({
  position: markerPosi
});
var we;
var ky;

var btn = document.getElementById('hi');
btn.addEventListener('click', where);

function where() {
  var loc = document.getElementById('hello').value;
  if (loc == '서울역') {
    we = 35.23174327628654;
    ky = 126.84272705987372;
  }

  var markerPosi = new kakao.maps.LatLng(we, ky);
  var marker = new kakao.maps.Marker({
    position: markerPosi
  });
  var moveLatLon = new kakao.maps.LatLng(we, ky);
  map.panTo(moveLatLon);
  marker.setMap(map);
}