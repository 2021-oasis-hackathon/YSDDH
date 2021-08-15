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
                Spacer()
                Spacer()
                    
                    
                    
                }
                

            }
        
            
        }
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}


