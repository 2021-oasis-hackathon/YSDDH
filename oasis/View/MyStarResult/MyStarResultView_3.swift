//
//  MyStarResultView_3.swift
//  oasis
//
//  Created by 최은기 on 2021/08/19.
//

import SwiftUI

struct MyStarResultView_3: View {
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        ScrollView{
            ZStack{
                Text("달궁계곡")
                    .foregroundColor(.white)
                    .font(.custom("", size: 24))
                    .zIndex(1.0)
                    .offset(y:-480)
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
                                        viewRouter.currentPage = .page4
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
                        Text("산내면 덕동리")
                            .font(.custom("", size: 13))

                    }.zIndex(1.0)
                     .offset(y:-370)
                    Image("RecommendCourseSelectPage_Pic3_Dalgung")
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
                            Text("두메산골식당")
                                .font(.custom("", size: 15))
                        }
                        HStack{
                            Circle()
                                .foregroundColor(Color(hue: 245, saturation: 0.54, brightness: 0.9).opacity(1))
                                .frame(width: 6.24, height: 6.24, alignment: .center)
                            Text("지리산산채식당")
                                .font(.custom("", size: 15))
                        }.padding(.bottom)
                        
                        Text("근처 관광지 추천")
                            .font(.custom("", size: 17))
                        HStack{
                            Circle()
                                .foregroundColor(Color(hue: 245, saturation: 0.54, brightness: 0.9).opacity(1))
                                .frame(width: 6.24, height: 6.24, alignment: .center)
                            Text("교룡산성")
                                .font(.custom("", size: 15))
                        }

    
                    }.offset(x:-50)
                    
                    Image("RecommendCourseSelectPage_Map3_Dalgung")
                        .resizable()
                        .frame(width: 326, height: 204, alignment: .center)
                        .offset(y:100)
                        .zIndex(1.0)
                        .offset(y:130)

                }
            }
            
        }.ignoresSafeArea()
    }
}

struct MyStarResultView_3_Previews: PreviewProvider {
    static var previews: some View {
        MyStarResultView_3()
    }
}
