//
//  MemoryWithStar.swift
//  oasis
//
//  Created by 최은기 on 2021/08/16.
//

import SwiftUI

struct MemoryWithStarView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
//    var season: String = "spring"
    
    var body: some View {
        
        Image(uiImage:UIImage(named: "SpringBackgroundImage") ?? UIImage(named: "placeHolderImage")!)
            .ignoresSafeArea()
            .overlay(
                ZStack{
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
                        
                    }.offset(x:30, y:60)
                    
                    VStack(alignment: .center){
                        Text("봄철 대삼각형")
                            .foregroundColor(.white)
                            .font(.custom("NotoSansKR-Regular", size: 20))
                            .offset(y:UIScreen.screenHeight * 0.196)
                        Spacer()
                    }
                    
                    Image(uiImage:UIImage(named: "springImage") ?? UIImage(named: "placeHolderImage")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.screenWidth*0.6493, height: UIScreen.screenHeight*0.2451, alignment: .center)
                })

    }
}

struct MemoryWithStar_Previews: PreviewProvider {
    static var previews: some View {
        MemoryWithStarView().environmentObject(ViewRouter())
    }
}
