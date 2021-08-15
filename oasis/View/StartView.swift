//
//  StartView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/16.
//

import SwiftUI

struct StartView: View {
    @State private var fadeInOut = false
    @EnvironmentObject var viewRouter: ViewRouter

    
    var body: some View {
        ZStack{
            Image(uiImage:UIImage(named: "startpage") ?? UIImage(named: "placeHolderImage")!)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            VStack{
                Image(uiImage:UIImage(named: "trackingStarLogo") ?? UIImage(named: "placeHolderImage")!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110, height: 500)
                    .onAppear(){
                        withAnimation(Animation.easeInOut(duration: 3)){
                            fadeInOut.toggle()
                        }
                    }.opacity(fadeInOut ? 1 : 0)
                Spacer()
            }
            VStack{
                Spacer()
                Image(uiImage:UIImage(named: "YSDDH_Logo") ?? UIImage(named: "placeHolderImage")!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 100)
            }
        }
        .onAppear(){
            delayText()
        }
    }
    
    public func delayText(){
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            viewRouter.currentPage = .page2
        }
        
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
