package searchSite;
import java.util.ArrayList;
import java.io.IOException;
import org.json.simple.parser.ParseException;

public class Site {
    public static void main(String[] args){
        // 마지막에서 첫번쨰 = 점수
//        마지막에서 두번째 = 습도
//        마지막에서 세번째 = 구름
        //마지막에서 네번째 = ny
        //마지막에서 다섯번째 = nx
        String[][] siteStr = new String[][]
                {{"전북", "완주군", "35.9442","127.29018" ,"0.39","140","63","89","","",""},
                {"전북","진안군", "35.87646", "127.497"   ,"1.36","279","68","88","","",""},
                {"전북", "정읍시", "35.53756", "127.10069","0.8" ,"223","58","83","","",""},
                {"전북", "남원시", "35.37057", "127.57223","0.95","513","68","80","","",""},
                {"전남", "영광군", "35.33929", "126.38598","0.58","50","52","77","","",""},
                {"전남", "담양군", "35.26786", "127.04785","0.53","201","61","78","","",""},
                {"전남", "화순군", "35.06984", "127.17163","0.39","201","61","72","","",""},
                {"전남", "구례군", "35.14617", "127.60335","0.32","341","69","75","","",""},
                {"전남", "해남군", "34.3194", "126.58606" ,"0.2" ,"30","54","61","","",""},
                {"전남", "장흥군", "34.78328", "126.74286","0.95","53","59","64","","",""},
                {"전남", "고흥군", "34.59317", "127.50778","0.26","30","66","62","","",""}};

        ParseJSON parseJSON = new ParseJSON();
        String[] ansStr = new String[2];
        for(int i = 0 ; i < siteStr.length ; i++){
            try {
                ansStr = parseJSON.weather(siteStr[i][6],siteStr[i][7]);

            } catch (IOException | ParseException e) {
                e.printStackTrace();
            }
            siteStr[i][8] = ansStr[0];
            siteStr[i][9] = ansStr[1];
        }
        for(int i = 0 ; i < siteStr.length ; i++){
            for(int j = 0 ; j <siteStr[1].length ; j++){
                System.out.print(siteStr[i][j] + "  ");
            }
            System.out.println();
        }
    }
}
