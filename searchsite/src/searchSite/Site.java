package searchSite;
import java.util.ArrayList;
import java.io.IOException;
import org.json.simple.parser.ParseException;




public class Site {
    public static void main(String[] args){
        //nx6 ny7 구름8 습도9 y1-10 y2-11 y3-12 y4-13 고유점수14 상대점수15 점수합산16
        String[][] siteStr = new String[][]
                {{"전북", "완도군 완도방조제", "35.9442","127.29018" ,"0.39","140","63","89","","","","","","","0","","0"},
                        {"전남","곡성군 진둔치", "35.87646", "127.497"   ,"1.36","279","68","88","","","","","","","0","","0"},
                        {"전남", "순천시 순천만습지천문대", "35.53756", "127.10069","0.8" ,"223","58","83","","","","","","","0","","0"},
                        {"전남", "진도군 비치산", "35.37057", "127.57223","0.95","513","68","80","","","","","","","0","","0"},
                        {"전남", "무안군 황토랑펜션", "35.33929", "126.38598","0.58","50","52","77","","","","","","","0","","0"},
                        {"전남", "영광군 안골", "35.26786", "127.04785","0.53","201","61","78","","","","","","","0","","0"},
                        {"전남", "장성군 통안제", "35.06984", "127.17163","0.39","201","61","72","","","","","","","0","","0"},
                        {"전남", "여수시 성두방파제", "35.14617", "127.60335","0.32","341","69","75","","","","","","","0","","0"},
                        {"전남", "진도군 비치산", "34.3194", "126.58606" ,"0.2" ,"30","54","61","","","","","","","0","","0"},
                        {"전남", "광양시 해달별천문대", "34.78328", "126.74286","0.95","53","59","64","","","","","","","0","","0"},
                        {"전남", "고흥군 영남용바위", "34.59317", "127.50778","0.26","30","66","62","","","","","","","0","","0"},
                        {"전북","군산시 새만금방조제", "35.85927", "126.50236","0.3","0","56","92","","","","","","","0","","0"},
                        {"전북", "완주군 거인산촌생태마을펜션", "35.9442", "127.29018","0.39" ,"140","66","91","","","","","","","0","","0"},
                        {"전북", "진안군 상전망향의광장", "35.87646", "127.497","1.36","279","69","89","","","","","","","0","","0"},
                        {"전남", "김제시 새만금방조제", "35.77115", "126.50338","0.49","2","57","90","","","","","","","0","","0"},
                        {"전남", "전주시 원동마을", "35.86148", "127.02814","2.53","21","63","89","","","","","","","0","","0"},
                        {"전북", "정읍시 옥정호", "35.53756", "127.10069","0.77","223","63","89","","","","","","","0","","0"},
                        {"전북", "정읍시 내청들", "35.55359", "126.93568","0.73","118","61","83","","","","","","","0","","0"},
                        {"전북", "익산시 화평마을 봉개광장", "35.92342", "127.03171" ,"2.67" ,"8","61","90","","","","","","","0","","0"},
                        {"전북", "순창군 대산교", "35.4190", "127.1834","0.51","115","63","80","","","","","","","0","","0"},
                        {"전북", "고창군 두암저수지", "35.41921", "126.51073","0.96" ,"34","52","79","","","","","","","0","","0"},
                        {"전북", "남원시 밤밭들", "35.34612", "127.3834","0.84","135","67","78","","","","","","","0","","0"},
                        {"전남", "구례군 중대리계곡", "35.14617", "127.60335","0.32","341","71","75","","","","","","","0","","0"},
                        {"전남", "광양시 해달별천문대", "35.07602", "127.555","0.53","203","71","71","","","","","","","0","","0"},
                        {"전남", "영암군 두목골마을", "34.78328", "126.74286","0.95","53","56","66","","","","","","","0","","0"},
                        {"전남", "고흥군 영남용바위", "34.59317", "127.50778","0.26","30","69","62","","","","","","","0","","0"},
                        {"전남", "고흥군 국립청소년우주센터", "34.53305", "127.46851" ,"0.77" ,"123","69","60","","","","","","","0","","0"},
                        {"전남", "해남군 땅끝조각공원", "34.31861", "126.58923","0.13","0","52","57","","","","","","","0","","0"},

                };

        //ParseJSON 객체 생성
        ParseJSON parseJSON = new ParseJSON();
        String[] ansStr = new String[2];
        for(int i = 0 ; i < siteStr.length ; i++){
            try {
                //ParseJSON 의 weather method 호출
                ansStr = parseJSON.weather(siteStr[i][6],siteStr[i][7]);

            } catch (IOException | ParseException e) {
                e.printStackTrace();
            }
            //siteStr[i][9]=습도, siteStr[i][9]=습도
            siteStr[i][8] = ansStr[0];
            siteStr[i][9] = ansStr[1];
        }

        //y1계산 -> 정적 데이터로 만들수 있는 지형에 관한 변수
        for(int i = 0 ; i < siteStr.length ; i++){
            elevation ele = new elevation();
            double score = Double.valueOf(siteStr[i][14]);
            double y1 = ele.calculate(siteStr[i][2],siteStr[i][3]);
            score += 30*y1;
            siteStr[i][14] = String.valueOf(score);
        }
        //y2계산 siteStr[i][9]=습도
        for(int i = 0 ; i < siteStr.length ; i++){
            int num = Integer.parseInt(siteStr[i][9]);
            double y2 = Math.exp(-(num/100));
            y2 = -0.5819 * y2 + 1.1581;
            siteStr[i][11] = String.valueOf(y2);
            double score = Double.valueOf(siteStr[i][14]);
            score += 5*y2;
            siteStr[i][14] = String.valueOf(score);

        }
        //y3계산 siteStr[i][4]=광공해
        for(int i = 0 ; i < siteStr.length ; i++){
            double num = Double.valueOf(siteStr[i][4]);
            double y3 = (num-10);
            y3 = Math.pow(y3,2);
            y3 /= 100;
            siteStr[i][12] = String.valueOf(y3);
            double score = Double.valueOf(siteStr[i][14]);
            y3*=65;
            score+=y3;
            siteStr[i][14] = String.valueOf(score);
        }

        //y4계산
        for(int i = 0 ; i <siteStr.length ; i++){
            //siteStr[i][8]=구름 정보
            int num = Integer.parseInt(siteStr[i][8]);
            double y4 = 1 / Math.exp(num);
            y4 = -0.1565 * y4 + 1.1565;
            siteStr[i][13] = String.valueOf(y4);
            y4*=100;
            siteStr[i][15] = String.valueOf(y4);
        }


        //고유점수와 상대점수를 바탕으로 최종점수 계산
        for(int i = 0 ; i < siteStr.length ; i++ ){
            //siteStr[i][14] 고유점수
            double score_1 = Double.valueOf(siteStr[i][14]);
            //siteStr[i][15] 상대점수
            double score_2 = Double.valueOf(siteStr[i][15]);
            double final_score = (score_1 + score_2) / 2;
            //siteStr[i][15] 최종점수
            siteStr[i][16] = String.valueOf(final_score);
        }

        //정렬 comparator 사용하고 싶긴한데 일단 보류, Bubble sort
        for(int i = 0; i < siteStr.length; i++) {
            for(int j = 0 ; j < siteStr.length - i - 1 ; j++) {
                double jj = Double.valueOf(siteStr[j][16]);
                double jjp = Double.valueOf(siteStr[j+1][16]);
                if(jj < jjp) {
                    //temp용 string 배열 선언 후 교체
                    String[] strArr = new String[16];
                    strArr = siteStr[j+1];
                    siteStr[j+1] = siteStr[j];
                    siteStr[j] = strArr;
                }
            }
        }

        //전체 Table 출력
//        for(int i = 0 ; i < siteStr.length ; i++){
//            for(int j = 0 ; j <siteStr[1].length ; j++){
//                System.out.print(siteStr[i][j] + "  ");
//            }
//            System.out.println();
//        }

        //Top 3 출력
        for(int i = 0 ; i < 3 ; i++ ){
            System.out.println(siteStr[i][0] + " " + siteStr[i][1] + " " + siteStr[i][16]);
        }

    }
}
