//
//  FindMyStarView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/16.
//

import SwiftUI

struct FindMyStarView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack{
            VStack{
                Image(uiImage:UIImage(named: "RecommendBack") ?? UIImage(named: "placeHolderImage")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()
                
            }
            
            VStack(alignment:.leading){
                Spacer()
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
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(white: 1.0))
                    .frame(width: 327, height: 510)
                    .shadow(radius: 20)
                    .offset(y:65)
                smallSquareView()
            }
                
                
            

        }
    }
}


//MARK: - small square view

struct smallSquareView: View {
    var body: some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(hue: 240, saturation: 0, brightness: 0.85, opacity: 0.9))
        .frame(width: 42, height: 42)
    }
}



struct FindMyStarView_Previews: PreviewProvider {
    static var previews: some View {
        FindMyStarView().environmentObject(ViewRouter())
    }
}


