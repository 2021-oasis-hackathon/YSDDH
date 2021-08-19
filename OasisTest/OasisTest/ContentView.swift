//
//  ContentView.swift
//  OasisTest
//
//  Created by 최은기 on 2021/08/15.
//

import SwiftUI
//
//  GallaryView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/17.
//


enum GridType: CaseIterable{
    case triple
    var column :[GridItem] {
        switch self{
        
        case .triple:
            return [GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())]
        }
    }
    
}

struct GallaryView: View {
    
    var images: [String] = ["starImg","starImg"]
    var gridType : GridType = .triple
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: gridType.column, content: {
                ForEach(images, id: \.self){ image in
                    Image("starImg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            })
            
        }
        
        
    }
}



struct ContentView: View {
    var body: some View {
        VStack{
            GallaryView()
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
