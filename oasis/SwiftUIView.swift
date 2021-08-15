//
//  SwiftUIView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/15.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text("별빛 따라")
            .font(.custom("NotoSansKR-Regular", size: 24))
            .foregroundColor(.Color())
            .tracking(-1.2) + Text(" \n떠나보는 ").font(.custom("NotoSansKR-Regular", size: 22)).foregroundColor(Color(.black)).tracking(-1.1) + Text("여행").font(.custom("NotoSansKR-Bold", size: 22)).foregroundColor(Color(.black)).tracking(-1.1)

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}


