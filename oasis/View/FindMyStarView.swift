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
                    .frame(width: 327, height: 510)
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
                    smallSquareView("전라남도", UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                    smallSquareView("전라북도", UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                    smallSquareView("광주", UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
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
                Button(action: {
                    withAnimation {
                        viewRouter.currentPage = .page3_1
                    }
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 0.45, green: 0.42, blue: 0.9))
                            .frame(width: 250, height: 50, alignment: .center)
                        Text("별빛 찾으러 가자")
                            .font(.custom("NotoSansKR-Regular", size: 13))
                            .foregroundColor(.white)
                    }.offset(y:250)
                })
                
                    
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
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hue: 240, saturation: 0, brightness: 0.85, opacity: 0.9))
                .frame(width: 42, height: 42)
                Image(uiImage: img)
                    .frame(width: 24, height: 24)
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


