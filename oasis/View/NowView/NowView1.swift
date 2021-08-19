//
//  NowView1.swift
//  oasis
//
//  Created by 최은기 on 2021/08/19.
//

import SwiftUI

struct NowView1: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var column = [GridItem(.flexible(maximum:50), spacing: 2),
                  GridItem(.flexible(maximum:50), spacing: 2),
                  GridItem(.flexible(maximum:50), spacing: 2)]

    var body: some View {
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
                        ZStack{
                            VStack(alignment:.leading){
                                ZStack{
                                    Text("")
                                        .font(.custom("NotoSansKR-Regular", size: 12))
                                        .zIndex(1.0)
                                }.offset(x:-30)
                                
                                Text("     당신의 위치에서\n가장 가까운 관측 장소")
                                    .font(.custom("NotoSansKR-Regular", size: 16))
                                    .foregroundColor(.white)
                                    .position(x: 150, y: 25)

                            }
                            VStack{
                                Spacer()
                                Image("dummyMap")
                                    .offset(x:-25, y:10)
                                    .background(Image("backWave")
                                                .resizable()
                                                    .offset(y:-20)
                                                .frame(width: 435, height: 268, alignment: .center))
                                VStack{
                                    HStack{
                                        VStack{
                                            Text("1")
                                                .font(.custom("NotoSansKR-Bold", size: 30))
                                                .padding(.trailing, 15)
                                                .offset(x: -35, y:-5)
                                            Text("27.5 km")
                                                .tracking(1.0)
                                                .font(.custom("NotoSansKR-Regular", size: 10))
                                                .offset(x: -35, y:-10)
                                        }
                                        VStack(spacing:3){
                                            ZStack{
                                                Text("전남  구례군")
                                                    .font(.custom("NotoSansKR-Regular", size: 12))
                                                    .tracking(-1)
                                                    .zIndex(1.0)
                                                Image("roundRectangleTag")
                                                    .resizable()
                                                    .frame(width: 70, height: 20.67)
                                            }.offset(x:-35)
                                            Text("중대리계곡")
                                                .offset(x:-27)
                                            
                                        }
                                        
                                    }.offset(x:-30, y:50)
                                    RoundedRectangle(cornerRadius: 1)
                                        .fill(Color(red: 0.92, green: 0.93, blue: 0.95))
                                        .frame(width: 250, height: 2, alignment: .center)
                                        .offset(x:-25, y:30)
                                }.offset(y:-15)
                                VStack{
                                    HStack{
                                        VStack{
                                            Text("2")
                                                .font(.custom("NotoSansKR-Bold", size: 30))
                                                .padding(.trailing, 15)
                                                .offset(x: -28, y:-5)
                                            Text("42.1 km")
                                                .tracking(1.0)
                                                .font(.custom("NotoSansKR-Regular", size: 10))
                                                .offset(x: -28, y:-10)
                                        }
                                        VStack(spacing:3){
                                            ZStack{
                                                Text("전남  영광군")
                                                    .font(.custom("NotoSansKR-Regular", size: 12))
                                                    .tracking(-1)
                                                    .zIndex(1.0)
                                                Image("roundRectangleTag")
                                                    .resizable()
                                                    .frame(width: 70, height: 20.67)
                                            }
                                                .offset(x:-35, y:-5)
                                            Text("백수해안도로")
                                                .offset(x:-27, y:-5)
                                        }
                                        
                                    }.offset(x:-30, y:50)
                                    RoundedRectangle(cornerRadius: 1)
                                        .fill(Color(red: 0.92, green: 0.93, blue: 0.95))
                                        .frame(width: 250, height: 2, alignment: .center)
                                        .offset(x:-25, y:30)
                                }.offset(y:-40)
                                VStack{
                                    HStack{
                                        VStack{
                                            Text("3")
                                                .font(.custom("NotoSansKR-Bold", size: 30))
                                                .padding(.trailing, 15)
                                                .offset(x: -35, y:-5)
                                            Text("80.6 km")
                                                .tracking(1.0)
                                                .font(.custom("NotoSansKR-Regular", size: 10))
                                                .offset(x: -35, y:-10)
                                        }
                                        VStack(spacing:3){
                                            ZStack{
                                                Text("전남  담양군")
                                                    .font(.custom("NotoSansKR-Regular", size: 12))
                                                    .tracking(-1)
                                                    .zIndex(1.0)
                                                Image("roundRectangleTag")
                                                    .resizable()
                                                    .frame(width: 70, height: 20.67)
                                            }
                                                .offset(x:-35, y:-5)
                                            Text("평승내들")
                                                .offset(x:-35, y:-5)
                                            
                                        }
                                        
                                    }.offset(x:-30, y:20)
                                    RoundedRectangle(cornerRadius: 1)
                                        .fill(Color(red: 0.92, green: 0.93, blue: 0.95))
                                        .frame(width: 250, height: 2, alignment: .center)
                                        .offset(x:-25, y:0)
                                    
                                }.offset(y:-40)
                            }
                            
                        }
                    }
                    

                    Spacer()

                    
                }
                .offset(x:30, y:10)
            }
            
        }
    }
}

struct NowView1_Previews: PreviewProvider {
    static var previews: some View {
        NowView1().environmentObject(ViewRouter())
    }
}
