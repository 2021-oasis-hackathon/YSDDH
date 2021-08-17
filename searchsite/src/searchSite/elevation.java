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
    public static void main(String[] args) throws IOException, ParseException {
    }
    public static double elevation(double wedo,double kydo) throws IOException, ParseException {

        String myurl ="https://maps.googleapis.com/maps/api/elevation/json?locations=";
        String key = "SECRET-KEY";

        //받은 위도와 경도 String으로 변환
        String we = String.valueOf(wedo);
        String ky = String.valueOf(kydo);

        //URL 제작
        StringBuilder urlString = new StringBuilder(myurl);
        urlString.append(we+",");
        urlString.append(ky);
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

        //받은 JSON Parsing
        JSONParser jsonParser = new JSONParser();
        JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
        JSONArray resultArray = (JSONArray) jsonObj.get("results");
        JSONObject elevationObject = (JSONObject) resultArray.get(0);

        //고도 값 반환
        return Double.parseDouble(elevationObject.get("elevation").toString());

    }

    //y1을 계산하기 위한 함수
    public static double calculate(String we,String ky){
        //String으로 받은 위도와 경도를 double로 casting
        double wedo = Double.parseDouble(we);
        double kydo = Double.parseDouble(ky);

        //가장 큰 tangent 값 저장용
        double maximum=0;

        //북쪽이 가장 큰 tan값을 갖는지 알아보기 위한 Bool변수
        boolean north = false;

        //각 방위별로 탄젠트 계산 -> 동
        for (int i = 0 ; i < 4 ; i++){
            try {
                //elevation method 호출
                double tan = elevation(wedo,kydo+i*0.05625);
                double tan_result = tan/(1000*i);
                if (maximum < tan_result){
                    maximum = tan_result;
                }

            } catch (IOException | ParseException e) {
                e.printStackTrace();
            }
        }

        //각 방위별로 탄젠트 계산 -> 남
        for (int i = 0 ; i < 4 ; i++){
            try {
                //elevation method 호출
                double tan =  elevation(wedo-i*0.05625,kydo);
                double tan_result = tan/(1000*i);
                if (maximum < tan_result){
                    maximum = tan_result;
                }

            } catch (IOException | ParseException e) {
                e.printStackTrace();
            }
        }

        //각 방위별로 탄젠트 계산 -> 서
        for (int i = 0 ; i < 4 ; i++){
            try {
                //elevation method 호출
                double tan = elevation(wedo,kydo-i*0.05625);
                double tan_result = tan/(1000*i);
                if (maximum < tan_result){
                    maximum = tan_result;
                }

            } catch (IOException | ParseException e) {
                e.printStackTrace();
            }
        }

        //각 방위별로 탄젠트 계산 -> 북
        for (int i = 0 ; i < 4 ; i++){
            try {
                //elevation method 호출
                double tan = elevation(wedo+i*0.05625,kydo);
                double tan_result = tan/(1000*i);
                if (maximum < tan_result){
                    maximum = tan_result;
                    north = true; // north 값 변환
                }

            } catch (IOException | ParseException e) {
                e.printStackTrace();
            }
        }

        //arctan 이용해서 세타값 구함
        double tan_max = Math.atan(maximum);

        // 1차함수에 대입, 최종 값을 저장할 result 변수
        double result = ((-1)*(tan_max / 90)) + 1;

        //북쪽이면 1점 더한 후 2로 나눔
        if(north = true){
            result = (result + 1)/2;
        }
        //반환
        return result;

    }
}
