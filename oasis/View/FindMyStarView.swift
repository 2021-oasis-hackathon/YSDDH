//
//  FindMyStarView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/16.
//

import SwiftUI

struct FindMyStarView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @StateObject private var selectedItems = FindMyStarViewModel()
    @State private var changeView = false
    var column = [GridItem(.flexible(maximum:50), spacing: 2),
                  GridItem(.flexible(maximum:50), spacing: 2),
                  GridItem(.flexible(maximum:50), spacing: 2)]
    
    var body: some View {
        
        if changeView == false{
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
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selectedItems.jeonNam.toggle()
                            }
                        }, label: {
                            if selectedItems.jeonNam == true{
                                smallSquareView("전라남도", UIImage(named: "JeonNam_C") ?? UIImage(named: "placeHolderImage")!)
                            }else{
                                smallSquareView("전라남도", UIImage(named: "JeonNam_G") ?? UIImage(named: "placeHolderImage")!)
                            }
                        }).buttonStyle(PlainButtonStyle())

                        //MARK: - JeonBuk Button
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selectedItems.jeonBuk.toggle()
                            }
                        }, label: {
                            if selectedItems.jeonBuk == true{
                                smallSquareView("전라북도", UIImage(named: "JeonBuk_C") ?? UIImage(named: "placeHolderImage")!)
                            }else{
                                smallSquareView("전라북도", UIImage(named: "JeonBuk_G") ?? UIImage(named: "placeHolderImage")!)
                            }
                        }).buttonStyle(PlainButtonStyle())
                        
                        //MARK: - Gwangju Button
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.2)) {
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
                        //MARK: - Sea Button
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selectedItems.sea.toggle()
                            }
                        }, label: {
                            if selectedItems.sea == true{
                                smallSquareView("바다", UIImage(named: "Sea_C") ?? UIImage(named: "placeHolderImage")!)
                            }else{
                                smallSquareView("바다", UIImage(named: "Sea_G") ?? UIImage(named: "placeHolderImage")!)
                            }
                        }).buttonStyle(PlainButtonStyle())
                        
                        //MARK: - flat Button
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selectedItems.flat.toggle()
                            }
                        }, label: {
                            if selectedItems.flat == true{
                                smallSquareView("평야", UIImage(named: "Flat_C") ?? UIImage(named: "placeHolderImage")!)
                            }else{
                                smallSquareView("평야", UIImage(named: "Flat_G") ?? UIImage(named: "placeHolderImage")!)
                            }
                        }).buttonStyle(PlainButtonStyle())
                        
                        //MARK: - valley Button
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selectedItems.valley.toggle()
                            }
                        }, label: {
                            if selectedItems.valley == true{
                                smallSquareView("도심", UIImage(named: "valley_C") ?? UIImage(named: "placeHolderImage")!)
                            }else{
                                smallSquareView("도심", UIImage(named: "valley_G") ?? UIImage(named: "placeHolderImage")!)
                            }
                        }).buttonStyle(PlainButtonStyle())
                        
                        //MARK: - mountain Button
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selectedItems.mountain.toggle()
                            }
                        }, label: {
                            if selectedItems.mountain == true{
                                smallSquareView("산", UIImage(named: "Mountain_C") ?? UIImage(named: "placeHolderImage")!)
                            }else{
                                smallSquareView("산", UIImage(named: "Mountain_G") ?? UIImage(named: "placeHolderImage")!)
                            }
                        }).buttonStyle(PlainButtonStyle())
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
                               changeView = true
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
        //MARK: - Result View
        else{
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
                                    changeView = false
                                }
                            }, label: {
                                Image(uiImage:UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 12, height: 15)
                            })
                            ZStack{
                                VStack(alignment:.leading){
                                    LazyVGrid(columns:column, alignment: .center){
                                        ForEach(selectedItems.typeName, id: \.self){value in
                                            RoundRectangleTagView(selected: value)
                                        }
                                    }.offset(x:-30)
                                    
                                    Text("키워드를 바탕으로 한 \n    검색 결과입니다")
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
                                            Text("1")
                                                .font(.custom("NotoSansKR-Bold", size: 30))
                                                .padding(.trailing, 15)
                                                .offset(y:5)
                                            VStack(spacing:3){
                                                Text("곡성섬진강천문대")
                                                    .offset(x:-7)
                                                HStack{
                                                    RoundRectangleTagView(selected: "강가")
                                                    RoundRectangleTagView(selected: "구례군")
                                                    RoundRectangleTagView(selected: "맑음")
                                                }
                                            }
                                            
                                        }.offset(x:-30, y:50)
                                        RoundedRectangle(cornerRadius: 1)
                                            .fill(Color(red: 0.92, green: 0.93, blue: 0.95))
                                            .frame(width: 250, height: 2, alignment: .center)
                                            .offset(x:-25, y:30)
                                    }.offset(y:-15)
                                    VStack{
                                        HStack{
                                            Text("2")
                                                .font(.custom("NotoSansKR-Bold", size: 30))
                                                .padding(.trailing, 15)
                                                .offset(y:5)
                                            VStack(spacing:3){
                                                Text("중대리계곡")
                                                    .offset(x:-27)
                                                HStack{
                                                    RoundRectangleTagView(selected: "강가")
                                                    RoundRectangleTagView(selected: "구례군")
                                                    RoundRectangleTagView(selected: "맑음")
                                                }
                                            }
                                            
                                        }.offset(x:-30, y:50)
                                        RoundedRectangle(cornerRadius: 1)
                                            .fill(Color(red: 0.92, green: 0.93, blue: 0.95))
                                            .frame(width: 250, height: 2, alignment: .center)
                                            .offset(x:-25, y:30)
                                    }.offset(y:-40)
                                    VStack{
                                        HStack{
                                            Text("3")
                                                .font(.custom("NotoSansKR-Bold", size: 30))
                                                .padding(.trailing, 15)
                                                .offset(y:5)
                                            VStack(spacing:3){
                                                Text("백련입구")
                                                    .offset(x:-35)
                                                HStack{
                                                    RoundRectangleTagView(selected: "평야")
                                                    RoundRectangleTagView(selected: "신안군")
                                                    RoundRectangleTagView(selected: "흐림")
                                                }
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

struct RoundRectangleTagView: View{
    var selected : String
    
    var body: some View{
        ZStack{
            Text("\(selected)")
                .font(.custom("NotoSansKR-Regular", size: 12))
                .zIndex(1.0)
            Image("roundRectangleTag")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 20.67)
        }
    }
}



struct FindMyStarView_Previews: PreviewProvider {
    static var previews: some View {
        FindMyStarView().environmentObject(ViewRouter())
    }
}


