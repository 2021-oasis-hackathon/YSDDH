var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1;
var yyyy = today.getFullYear();
var hours = today.getHours();
var minutes = today.getMinutes();
console.log("time " + minutes)
if(minutes < 30){
    // 30분보다 작으면 한시간 전 값
    hours = hours - 1;
    if(hours < 0){
        // 자정 이전은 전날로 계산
        today.setDate(today.getDate() - 1);
        dd = today.getDate();
        mm = today.getMonth()+1;
        yyyy = today.getFullYear();
        hours = 23;
    }
}
if(hours<10) {
    hours='0'+hours
}
if(mm<10) {
    mm='0'+mm
}
if(dd<10) {
    dd='0'+dd
} 
var _nx = "100",
_ny = "60",
apikey = "Emz8CfMLIHnIeD7Hl6qDBtzOB5Mpt3Sgh8G9ol07R4yzQ3ffyNDX%2BTdekwX6KD2utTd7q8UbAik%2B8pgk7w3bug%3D%3D",
today = yyyy+""+mm+""+dd,
basetime = hours + "00",
fileName = "	http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0";
fileName += "?ServiceKey=" + apikey;
fileName += "&base_date=" + today;
fileName += "&base_time=" + basetime;
fileName += "&nx=" + _nx + "&ny=" + _ny;
fileName += "&pageNo=1&numOfRows=6";
fileName += "&type=json";

console.log(fileName)
// var spotList =[
//   ['전북', '완주군', 35.9442,	127.29018,	0.39,	140],
//   ['전북','진안군', 35.87646, 127.497,	1.36, 279],
//   ['전북', '정읍시', 35.53756, 127.10069,	0.8, 223],
//   ['전북', '남원시', 35.37057, 127.57223,	0.95,	513],
//   ['전남', '영광군', 35.33929, 126.38598,	0.58,	50],
//   ['전남', '담양군', 35.26786, 127.04785,	0.53,	201],
//   ['전남', '화순군', 35.06984, 127.17163,	0.39,	201 ],
//   ['전남', '구례군', 35.14617, 127.60335,	0.32,	341],
//   ['전남', '해남군', 34.3194, 126.58606, 0.2,	30],
//   ['전남', '장흥군', 34.78328, 126.74286, 0.95,	53],
//   ['전남', '고흥군', 34.59317, 127.50778,	0.26,	30]

// ];





// // var token = $("input[name='_csrf']").val();
// // var header = "X-CSRF-TOKEN";

// weather_url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst?"
// service_key = "oIfU%252BI9A77i5G8CuU8PpjLtQ%252FEMspjnhaRo3tRnh%252BGsgl8BOcrCKUUOZbodB6zZujAzgPR9ihS0Q%252Fzs3u2xyqA%253D%253D";
// // const http = require('http');

// var today = new Date();
// var year = today.getFullYear(); // 년도
// var month = today.getMonth() + 1;  // 월
// var date = today.getDate();  // 날짜
// if(month<10){
//   month = "0"+month
// }
// var base_date = year + month + String(date);
// var base_time = 2000;

// var nx = "60";
// var ny = "128";

// var payload = "ServiceKey=" + service_key + "&pageNo=1&numOfRows=10&dataType=JSON&base_date=" + base_date + "&base_time=2000&nx=" + nx + "&ny=" + ny;
// payload += "&pageNo=1&numOfRows=6";
// payload += "&_type=json";
// var new_url = weather_url + payload ;
// console.log(new_url)

// $.ajax({
//   url: new_url,
//   type: 'GET',
//   cache: false,
//   success: function(data) {
//       var myXML = rplLine(data.responseText);
//       var indexS = myXML.indexOf('"body":{"items":{'),
//           indexE = myXML.indexOf("}]}"),
//           result = myXML;
// //                result = myXML.substring(indexS, indexE);
//       var jsonObj = $.parseJSON('[' + result + ']'),
//           rainsnow = jsonObj[0].response.body.items.item[0].obsrValue,
//           sky = jsonObj[0].response.body.items.item[4].obsrValue,
//           temp = jsonObj[0].response.body.items.item[5].obsrValue;
//           var contentText = document.getElementById('content');
//       contentText.innerHTML = "하늘 상태 : " + sky + " / 눈 비 상태 : " + rainsnow + " / 온도 : " + temp;
//   },
//   error:function(request,status,error){
//       alert("다시 시도해주세요.\n" + "code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
//   }
//   });