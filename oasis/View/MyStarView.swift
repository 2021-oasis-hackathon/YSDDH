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
            VStack(alignment:.leading){
                Image(uiImage:UIImage(named: "MyStarViewBack") ?? UIImage(named: "placeHolderImage")!)
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
            
            HStack{
                Image(uiImage:UIImage(named: "starImg") ?? UIImage(named: "placeHolderImage")!)
                Text("나는").font(.custom("NotoSansKR-Bold", size: 16))
                Spacer()
            }
            .offset(x: 15,  y:-30)
            .padding()
            
            HStack{
                
            }
            

        }

    }
}

struct MyStar_Previews: PreviewProvider {
    static var previews: some View {
        MyStarView().environmentObject(ViewRouter())
    }
}
