//
//  GallaryView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/17.
//

import SwiftUI


struct SpringGallaryView: View {
    
    //MARK: - Spring Image
    var images = Array(1...12).map({
        "image$\($0)"
    })
    var column = [GridItem(.flexible()),
                  GridItem(.flexible()),
                  GridItem(.flexible())]
    
    var body: some View {
        
        ZStack{
            Image(uiImage:UIImage(named: "GallaryBackImage") ?? UIImage(named: "placeHolderImage")!)
                .ignoresSafeArea()
            VStack{
                VStack{
                    Image("downward")
                        .resizable()
                        .frame(width: 32, height: 12, alignment: .center)
                        .offset(y:50)
                        
                    
                    Image("trackingStarLogo")
                        .resizable()
                        .frame(width: 32, height: 47.3, alignment: .center)
                        .padding()
                        .offset(y:50)
                    
                    Text("추억 한장 남겨볼까요")
                        .font(.custom("NotoSansKR-Regular", size: 18))
                        .foregroundColor(.white)
                        .tracking(-1)
                        .padding(.bottom, 30)
                        .offset(y:50)

                }

                Spacer()
                ScrollView(.horizontal){
                    LazyHGrid(rows:column) {
                        ForEach(images, id: \.self){ image in
                            //MARK: - Spring Image sets
                            Image("starImg")
                                .resizable()
                                .frame(width: UIScreen.screenWidth*0.264, height: UIScreen.screenWidth*0.264)
                                .aspectRatio(contentMode: .fit)
                                .background(Color.white)
                                .padding(UIScreen.screenWidth * (7.5/UIScreen.screenWidth))
                                
                        }
                    }

                }
                .padding(.leading, 8)
                Spacer()
                Spacer()
                Spacer()
            }
            
            //MARK: - Season Information
            Image("springImage")
                .resizable()
                .frame(width: 99, height: 81, alignment: .center)
                .offset(y:270)
            
            Text("봄의 대삼각형")
                .foregroundColor(.white)
                .tracking(-1)
                .font(.custom("NotoSansKR-Regular", size: 14))
                .offset(y:360)

            
        }
        
    }
}

struct GallaryView_Previews: PreviewProvider {
    static var previews: some View {
        SpringGallaryView()
    }
}
