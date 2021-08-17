package searchSite;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Calendar;

public class elevation {
    public static void main(String[] args) throws IOException {
    }
    public String[] weather() throws IOException, ParseException {

        //습도, 구름의 양 받을 array
        String[] resultArr = new String[2];
        String myurl ="https://maps.googleapis.com/maps/api/elevation/json?locations=";
        String key = "AIzaSyBY8mSm8eMWweBsHJcgYUSUzKNnwFR_MhI";
        String we = "35.87646";
        String ky = "127.497";

        //URL 제작
        StringBuilder urlString = new StringBuilder(myurl);
        urlString.append(we+",");
        urlString.append(ky+",");
        urlString.append("&" + URLEncoder.encode("key", "UTF-8") + "=" + URLEncoder.encode(key, "UTF-8"));



        //URL바탕으로 서버로부터 json data 가져옴
        URL url = new URL(urlString.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");

        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        String result= sb.toString();
        System.out.println(result);

//        JSON data = result로부터 안쪽의 item까지 진입
        JSONParser jsonParser = new JSONParser();
        JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
        JSONObject parseResponse = (JSONObject) jsonObj.get("response");
        JSONObject parseBody = (JSONObject) parseResponse.get("body");
        JSONObject parseItems = (JSONObject) parseBody.get("items");

        JSONArray parseItem = (JSONArray) parseItems.get("item");


        for(int i = 0 ; i < parseItem.size() ; i++){
            JSONObject obj = (JSONObject) parseItem.get(i);
            Object fcstV = obj.get("fcstValue");
            String cate = (String) obj.get("category");
            //날씨 code볼때까지 loop
            switch(cate) {
                //구름
                case "SKY":
                    resultArr[0] = (obj.get("fcstValue").toString());
                    break;
                //습도
                case "REH":
                    resultArr[1] = (obj.get("fcstValue").toString());
                    break;
            }
        }
        return resultArr;
    }
}
