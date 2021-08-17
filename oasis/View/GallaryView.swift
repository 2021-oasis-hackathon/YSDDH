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
                .gesture(
                    DragGesture()
                            .onChanged{ value in
                                self.viewState = value.translation
                            }
                            .onEnded{ value in
                                if self.viewState.height > 200 {
                                    self.viewState = CGSize(width: 0, height: 500)
                                }
                                else{
                                    self.viewState = CGSize.zero
                                }
                                
                            }
                            
                            
                )
                .frame(width: 300, height: 600, alignment: .center)
        }
    }
}

struct GallaryView_Previews: PreviewProvider {
    static var previews: some View {
        GallaryView()
    }
}
