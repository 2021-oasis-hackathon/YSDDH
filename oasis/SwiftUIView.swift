import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        VStack{
            GeometryReader{ matrics in
                VStack(){
                Image(uiImage:UIImage(named: "main-header") ?? UIImage(named: "text.bubble")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                    HStack(alignment: .top, spacing: nil){
                        HStack{
                            Image(uiImage:UIImage(named: "starImg") ?? UIImage(named: "text.bubble")!)
                            Text("출발 준비 완료").font(.custom("NotoSansKR-Bold", size: 13))
                        }
                        Spacer()
                    }.offset(x:24, y: -20)
                    VStack{
                        HStack{
                            SquareView("추천 별빛", "별빛따라가 추천하는 여행 코스를 찾아봐요", (UIImage(named:"airplane") ?? UIImage(named: "text.bubble"))!)
                            SquareView("나의 별빛", "내게 딱 맞는 별빛을 찾으러 가요", (UIImage(named:"star") ?? UIImage(named: "text.bubble"))!)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(hue: 0, saturation: 0, brightness: 0.93).opacity(0.5))

                            RoundedRectangle(cornerRadius: 20)
                            .strokeBorder(Color(hue: 0, saturation: 0, brightness: 0.93).opacity(0.5), lineWidth: 0.5)
                        }
                        .compositingGroup()
                        .frame(width: 310, height: 72)
                            
                    }
                
                Spacer()
                Spacer()
                    
                    
                }
                

            }
        
            
        }
    }
}



// MARK: Square Block
struct SquareView: View {
    
    private var title: String
    private var content: String
    private var img: UIImage

    init(_ title: String, _ content: String, _ img: UIImage) {
        self.title = title
        self.content = content
        self.img = img
    }
    
    var body: some View{
        ZStack {
            Text(title)
                .foregroundColor(.black)
                .font(.custom("NotoSansKR", size: 14))
                .zIndex(1.0)
                .offset(x: -40, y: -40)
            
            Text(content)
                .font(.custom("NotoSansKR", size: 10))
                .offset(x:-21, y: -10)
                .frame(width: 89, height: 39, alignment: .leading )
            
            Image(uiImage: img)
                .resizable()
                .zIndex(1.0)
                .frame(width: 44, height: 44)
                .offset(x: 40, y: 40)
        
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(hue: 0, saturation: 0, brightness: 0.93).opacity(0.5))

            RoundedRectangle(cornerRadius: 20)
            .strokeBorder(Color(hue: 0, saturation: 0, brightness: 0.93).opacity(0.5), lineWidth: 0.5)
        }
        .compositingGroup()
        .frame(width: 155, height: 145)
        .shadow(color: Color(hue: 0, saturation: 0, brightness: 0.93).opacity(0.5), radius:2, x:0, y:2)
        .onTapGesture {
            print("tapped" + title)
        }
    }
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}


