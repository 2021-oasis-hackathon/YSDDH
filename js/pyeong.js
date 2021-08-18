//지도 선언
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
  center: new kakao.maps.LatLng(35.26786,127.64785), //지도의 중심좌표.
  level: 7 //지도의 레벨(확대, 축소 정도)
};
var markerPosi = new kakao.maps.LatLng(35.26786,127.64785);
  var marker = new kakao.maps.Marker({
    position: markerPosi
  });
  
var map = new kakao.maps.Map(container, options);
marker.setMap(map);


