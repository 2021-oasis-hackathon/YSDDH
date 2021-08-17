//
//  GallaryView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/17.
//

import SwiftUI


struct GallaryView: View {
    
    
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
                Text("1")
                
                ScrollView{
                    LazyVGrid(columns: column) {
                        ForEach(images, id: \.self){ image in
                            Image("starImg")
                                .resizable()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        }
                    }
                    
                }
                
            }
        }
        
    }
}

struct GallaryView_Previews: PreviewProvider {
    static var previews: some View {
        GallaryView()
    }
}
