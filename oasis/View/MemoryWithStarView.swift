//
//  MemoryWithStar.swift
//  oasis
//
//  Created by 최은기 on 2021/08/16.
//

import SwiftUI

struct MemoryWithStarView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
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
                                .background(Color(.black))
                        })
                        Spacer()
                    }
                Spacer()
                
            }.offset(x:30, y:10)
            Text("MemoryWithStarView")
        }
        
    }
}

struct MemoryWithStar_Previews: PreviewProvider {
    static var previews: some View {
        MemoryWithStarView().environmentObject(ViewRouter())
    }
}
