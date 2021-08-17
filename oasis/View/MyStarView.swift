//
//  MyStar.swift
//  oasis
//
//  Created by 최은기 on 2021/08/16.
//

import SwiftUI

struct MyStarView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        ZStack{
            //MARK: - Background Picture
            VStack(alignment:.leading){
                Image(uiImage:UIImage(named: "MyStarViewBack") ?? UIImage(named: "placeHolderImage")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()

            }
            
            //MARK: - Come Back Button
            HStack{
                VStack(alignment: .leading){
                        Button(action: {
                            withAnimation {
                                viewRouter.currentPage = .page2
                            }
                        }, label: {
                            Image(uiImage:UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 12, height: 15)
                        })
                        Spacer()
                    }
                Spacer()
                
            }.offset(x:30, y:10)
            
            //MARK: - Star Icon Part
            HStack{
                Image(uiImage:UIImage(named: "starImg") ?? UIImage(named: "placeHolderImage")!)
                Text("여기 어때요?").font(.custom("NotoSansKR-Bold", size: 16))
                Spacer()
            }
            .offset(x: 15,  y:-30)
            
                ScrollView(.horizontal){
                    HStack(alignment:.center){
                        CardView("지승이 천문대", ["전남", "산지"])
                        CardView("지승이 천문대", ["전남", "산지"])
                        CardView("지승이 천문대", ["전남", "산지"])
                        CardView("지승이 천문대", ["전남", "산지"])
                        CardView("지승이 천문대", ["전남", "산지"])
                    }.padding()

                }.offset(y:150)

//
//            ScrollView(.horizontal) {
//                HStack {
//                    Image("starImg")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    Image("starImg")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    Image("starImg")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    Image("starImg")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                } .frame(height: 200)
//            }
            

        }

    }
}


struct CardView: View{
    private var title: String
    private var tags: [String]
    
    init(_ title: String, _ tags: [String]){
        self.title = title
        
        self.tags = tags
    }
    
    
    var body: some View{
        ZStack{
            Image(uiImage:UIImage(named: "NightSkyImg") ?? UIImage(named: "placeHolderImage")!)
                .resizable()
                .frame(width: UIScreen.screenWidth*0.568, height: UIScreen.screenHeight*0.324, alignment: .center)
                .cornerRadius(10)
            VStack(alignment: .leading){
                Text("지승이 천문대")
                    .foregroundColor(.white)
                    .font(.custom("NotoSansKR-Regular", size: 22))
                Text("#전남 #산지")
                    .foregroundColor(.white)
                    .font(.custom("NotoSansKR-Regular", size: 15))
                    
            }.offset(x:-20, y: -80)
        
            
        }
    }
    
}


struct MyStar_Previews: PreviewProvider {
    static var previews: some View {
        MyStarView().environmentObject(ViewRouter())
    }
}
