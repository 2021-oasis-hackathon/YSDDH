//
//  ContentView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/15.
//

import SwiftUI

struct ContentView: View {
    @State private var isStart = true
    @EnvironmentObject var viewRouter: ViewRouter
        
    var body: some View {
        
        switch viewRouter.currentPage {
        case .page1:
            StartView()
        case .page2:
            MainPageView()
        case .page3:
            FindMyStarView()            
        }
        
        
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
