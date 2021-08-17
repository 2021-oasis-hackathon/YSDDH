//
//  GallaryView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/17.
//

import SwiftUI

struct GallaryView: View {
    @State var viewState = CGSize.zero
    
    var body: some View {
        
        ZStack{
            MemoryWithStarView()
            
            RoundedRectangle(cornerRadius: 10)
                .animation(.spring())
                .offset(y: self.viewState.height)
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
                .padding(.top, 100)
        }
    }
}

struct GallaryView_Previews: PreviewProvider {
    static var previews: some View {
        GallaryView()
    }
}
