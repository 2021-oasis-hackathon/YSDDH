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
    public static double elevation(String we,String ky) throws IOException, ParseException {

        String myurl ="https://maps.googleapis.com/maps/api/elevation/json?locations=";
        String key = "AIzaSyBY8mSm8eMWweBsHJcgYUSUzKNnwFR_MhI";

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

        JSONParser jsonParser = new JSONParser();
        JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
        JSONArray resultArray = (JSONArray) jsonObj.get("results");
        JSONObject elevationObject = (JSONObject) resultArray.get(0);
        return Double.parseDouble(elevationObject.get("elevation").toString());

    }
}
