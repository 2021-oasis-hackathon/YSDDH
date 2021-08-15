//
//  ContentView.swift
//  OasisTest
//
//  Created by 최은기 on 2021/08/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image(uiImage:UIImage(named: "1234") ?? UIImage(named: "text.bubble")!)
            Spacer()
            Spacer()
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
