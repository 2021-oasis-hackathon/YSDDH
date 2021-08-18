//
//  MyStarResultView_1.swift
//  oasis
//
//  Created by 최은기 on 2021/08/19.
//

import SwiftUI

struct MyStarResultView_1: View {
    @EnvironmentObject var viewRouter: ViewRouter

    
    var body: some View {
        ScrollView{
            ZStack{
                //MARK: - Background Image
                VStack{
                    Image(uiImage:UIImage(named: "RecommendCoursePage_Header") ?? UIImage(named: "placeHolderImage")!)
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
                                .position(x:10, y:50)
                                Spacer()
                            }
                        Spacer()
                        
                    }.offset(x:30, y:10)
                }
                ZStack{
                    VStack(alignment:.leading){
                        Text("별이 아주 잘 보여요!")
                            .font(.custom("", size: 17))
                        Text("송지면 땅끝해안로 2785")
                            .font(.custom("", size: 13))

                    }.zIndex(1.0)
                     .offset(y:-370)
                    Image("RecommendCourseSelectPage_place1")
                        .resizable()
                        .frame(width: 326, height: 204, alignment: .center)
                        .offset(y:100)
                        .zIndex(1.0)
                        .offset(y:-300)
                        //MARK: - Main Round Rectangle
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(white: 1.0))
                            .frame(width: UIScreen.screenWidth * 0.872 , height: UIScreen.screenHeight * 1.4)
                            .shadow(radius: 20)
                            .offset(y:120)
                    VStack(alignment:.leading){
                        Text("근처 맛집 추천")
                            .font(.custom("", size: 17))
                        HStack{
                            Circle()
                                .foregroundColor(Color(hue: 245, saturation: 0.54, brightness: 0.9).opacity(1))
                                .frame(width: 6.24, height: 6.24, alignment: .center)
                            Text("사구미어촌체험마을식당")
                                .font(.custom("", size: 15))
                        }
                        HStack{
                            Circle()
                                .foregroundColor(Color(hue: 245, saturation: 0.54, brightness: 0.9).opacity(1))
                                .frame(width: 6.24, height: 6.24, alignment: .center)
                            Text("땅끝전복마을")
                                .font(.custom("", size: 15))
                        }.padding(.bottom)
                        
                        Text("근처 맛집 추천")
                            .font(.custom("", size: 17))
                        HStack{
                            Circle()
                                .foregroundColor(Color(hue: 245, saturation: 0.54, brightness: 0.9).opacity(1))
                                .frame(width: 6.24, height: 6.24, alignment: .center)
                            Text("사구미어촌체험마을식당")
                                .font(.custom("", size: 15))
                        }
                        HStack{
                            Circle()
                                .foregroundColor(Color(hue: 245, saturation: 0.54, brightness: 0.9).opacity(1))
                                .frame(width: 6.24, height: 6.24, alignment: .center)
                            Text("땅끝전복마을")
                                .font(.custom("", size: 15))
                        }
    
                    }.offset(x:-50)
                    
                    Image("RecommendCourseSelectPage_place1")
                        .resizable()
                        .frame(width: 326, height: 204, alignment: .center)
                        .offset(y:100)
                        .zIndex(1.0)
                        .offset(y:200)

                }
            }
            
        }.ignoresSafeArea()
        
    }
}

struct MyStarResultView_1_Previews: PreviewProvider {
    static var previews: some View {
        MyStarResultView_1().environmentObject(ViewRouter())
    }
}
