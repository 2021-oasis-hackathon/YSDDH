//
//  WinterView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/18.
//

import SwiftUI

struct WinterView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @State var viewState = CGSize(width: 0, height: 800)
    
    var body: some View {
        
        ZStack{
            //MARK: - Background
            Image(uiImage:UIImage(named: "SpringBackgroundImage") ?? UIImage(named: "placeHolderImage")!)
                .ignoresSafeArea()
                .overlay(
                    ZStack{
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
                            
                        }.offset(x:30, y:60)
                        
                        VStack(alignment: .center){
                            Text("겨울의 대삼각형")
                                .foregroundColor(.white)
                                .tracking(-1)
                                .font(.custom("NotoSansKR-Regular", size: 20))
                                .offset(y:UIScreen.screenHeight * 0.196)
                            Spacer()
                        }
                        
                        //MARK: - Image
                        Image(uiImage:UIImage(named: "winterImage") ?? UIImage(named: "placeHolderImage")!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.screenWidth*0.6493, height: UIScreen.screenHeight*0.2451, alignment: .center)
                        
                        HStack{
                            Button(action: {
                                withAnimation {
                                    viewRouter.currentPage = .page7
                                }
                            }, label: {
                                Image(uiImage:UIImage(named: "goBackBtnWhite") ?? UIImage(named: "placeHolderImage")!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 12, height: 20)
                                    
                            }).padding()
                            Spacer()
                            Button(action: {
                                withAnimation {
                                    viewRouter.currentPage = .page5
                                }
                            }, label: {
                                Image(uiImage:UIImage(named: "goBackBtnWhiteReverse") ?? UIImage(named: "placeHolderImage")!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 12, height: 20)
                                    
                            }).padding()
                            
                        }
                        VStack{
                            Spacer()
                            VStack{
                                Text("추억 한장 남겨볼까요")
                                    .foregroundColor(.white)
                                    .tracking(-1)
                                    .font(.custom("NotoSansKR-Regular", size: 20))
                                Button(action: {
                                    withAnimation {
                                    self.viewState = .zero
                                    }
                                }, label: {
                                    Image(uiImage:UIImage(named: "goDownBtn") ?? UIImage(named: "placeHolderImage")!)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 37, height: 12)
                                })
                            }
                        }
                        .offset(y:-90)
                    })
            
            
            WinterGallaryView()
                .animation(.spring())
                .offset(y: self.viewState.height)
                .ignoresSafeArea()
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            self.viewState = value.translation
                        }
                        .onEnded{ val in
                            if (self.viewState.height > 200) {
                                self.viewState = CGSize(width: 0, height: 800)
                            }
                            else{
                                self.viewState = .zero
                            }
                            
                        }
                            
                            
                )
            
        }

    }
}

struct WinterView_Previews: PreviewProvider {
    static var previews: some View {
        WinterView().environmentObject(ViewRouter())
    }
}
