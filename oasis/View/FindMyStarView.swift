//
//  FindMyStarView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/16.
//

import SwiftUI

struct FindMyStarView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @StateObject var selectedItems = FindMyStarViewModel()
    
    var body: some View {
        ZStack{
            //MARK: - Background Image
            VStack{
                Image(uiImage:UIImage(named: "RecommendBack") ?? UIImage(named: "placeHolderImage")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()
                
            }
            //MARK: - go Back Button
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
                
                //MARK: - Main Round Rectangle
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(white: 1.0))
                    .frame(width: UIScreen.screenWidth * 0.872 , height: UIScreen.screenHeight * 0.6281)
                    .shadow(radius: 20)
                    .offset(y:65)
                
                //MARK: - First Choice
                HStack{
                    HStack{
                        Image(uiImage:UIImage(named: "starImg") ?? UIImage(named: "placeHolderImage")!)
                        Text("나는").font(.custom("NotoSansKR-Bold", size: 16))
                    }
                    Spacer() // go left
                }
                .offset(x:60, y: -135)
                
                HStack{
                    //MARK: - JeonNam Button
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            selectedItems.jeonNam.toggle()
                        }
                    }, label: {
                        if selectedItems.jeonNam == true{
                            smallSquareView("전라남도", UIImage(named: "JeonNam_C") ?? UIImage(named: "placeHolderImage")!)
                        }else{
                            smallSquareView("전라남도", UIImage(named: "JeonNam_G") ?? UIImage(named: "placeHolderImage")!)
                        }
                    }).buttonStyle(PlainButtonStyle())

                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.75)) {
                            selectedItems.jeonBuk.toggle()
                        }
                    }, label: {
                        if selectedItems.jeonBuk == true{
                            smallSquareView("전라북도", UIImage(named: "JeonBuk_C") ?? UIImage(named: "placeHolderImage")!)
                        }else{
                            smallSquareView("전라북도", UIImage(named: "JeonBuk_G") ?? UIImage(named: "placeHolderImage")!)
                        }
                    }).buttonStyle(PlainButtonStyle())
                    
                    Button(action: {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedItems.gwangju.toggle()
                        }
                    }, label: {
                        if selectedItems.gwangju == true{
                            smallSquareView("광주", UIImage(named: "Gwanju_C") ?? UIImage(named: "placeHolderImage")!)
                        }else{
                            smallSquareView("광주", UIImage(named: "Gwanju_G") ?? UIImage(named: "placeHolderImage")!)
                        }
                    }).buttonStyle(PlainButtonStyle())
        
                }.offset(x: -45.0, y: -75.0)
                
                //MARK: - Seperation Line
                HStack{
                    RoundedRectangle(cornerRadius: 1)
                        .fill(Color(red: 0.92, green: 0.93, blue: 0.95))
                        .frame(width: 250, height: 2, alignment: .center)
                }
                
                //MARK: - Second Choice
                HStack{
                    HStack{
                        Image(uiImage:UIImage(named: "starImg") ?? UIImage(named: "placeHolderImage")!)
                        Text("에 있는")
                            .font(.custom("NotoSansKR-Bold", size: 16))
                    }
                    Spacer()
                }
                .offset(x:60, y:40)
                
                HStack{
                    smallSquareView("바다", UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                    smallSquareView("평야", UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                    smallSquareView("도심", UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                    smallSquareView("산", UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                }.offset(x:-20, y:100)
            
                
                HStack{
                    Text("로 여행을 떠나고 싶어요")
                        .font(.custom("NotoSansKR-Regular", size: 13))
                        .offset(x:-20)
                    Spacer()
                }
                .offset(x:82, y:180)
                
                //MARK: - go to Result Page
                VStack{
                    Spacer()
                    Button(action: {
                        withAnimation {
                            viewRouter.currentPage = .page3_1
                        }
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 0.45, green: 0.42, blue: 0.9))
                                .frame(width: UIScreen.screenWidth * 0.6667, height: UIScreen.screenHeight * 0.062, alignment: .center)
                            Text("별빛 찾으러 가자")
                                .font(.custom("NotoSansKR-Regular", size: 13))
                                .foregroundColor(.white)
                        }
                    })
                }.offset(y:-90)
                
                    
            }

        }
    }
}


//MARK: - small square view

struct smallSquareView: View {
    
    var name: String
    var img: UIImage
    
    init(_ name: String, _ img: UIImage) {
        self.name = name
        self.img = img
    }
    
    var body: some View{
        
        VStack{
            ZStack{
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color(hue: 240, saturation: 0, brightness: 0.85, opacity: 0.9))
//                .frame(width: 42, height: 42)
                Image(uiImage: img)
                    .frame(width: 42, height: 42)
            }
        
            Text(name)
                .notoSansFontContent()
        }
    }
}



struct FindMyStarView_Previews: PreviewProvider {
    static var previews: some View {
        FindMyStarView().environmentObject(ViewRouter())
    }
}


