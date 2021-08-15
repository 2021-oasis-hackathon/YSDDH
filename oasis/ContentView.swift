//
//  ContentView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/15.
//

import SwiftUI

struct ContentView: View {
    @State private var isStart = true
    @State private var fadeInOut = false
    
    
    var body: some View {
        
        if isStart{
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
        else{
            SwiftUIView()
        }

    }
    
        
    public func delayText(){
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            isStart.toggle()
        }
        
    }
    
            
}


        
        

        
//        ZStack {
//            Rectangle()
//            .fill(LinearGradient(
//                    gradient: Gradient(stops: [
//                                        .init(color: Color(red: 0.42, green: 0.56, blue: 0.9, opacity: 1.0), location: 0),
//                                        .init(color: Color(red: 0.54, green: 0.28, blue: 0.79, opacity: 0.72), location: 0.7239583134651184),
//                                        .init(color: Color(red: 0.62, green: 0.16, blue: 0.69, opacity: 0.27), location: 1)]),
//                    startPoint: UnitPoint(x: 0.7958332848018954, y: 0.7593750213746899),
//                    endPoint: UnitPoint(x: -0.32777772662063476, y: 0.05156252585720089)))
//
//            Rectangle()
//            .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.20000000298023224)))
//        }
//        .compositingGroup()
//        .frame(width: 360, height: 640)
//        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4 ).opacity(0.75)
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
