//
//  FindMyStarView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/16.
//

import SwiftUI

struct FindMyStarView: View {
    var body: some View {
        VStack{
            Image(uiImage:UIImage(named: "RecommendBack") ?? UIImage(named: "placeHolderImage")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea()
            Spacer()
            
            

        }
        
    }
}


//MARK: - small square view

struct smallSquareView: View {
    var body: some View{
        Rectangle()
            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .frame(width: 34, height: 35)
    }
}



struct FindMyStarView_Previews: PreviewProvider {
    static var previews: some View {
        FindMyStarView()
    }
}


