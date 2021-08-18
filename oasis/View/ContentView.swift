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
//        case .page3_1:
//            FindMyStarResultView()
        case .page4:
            MyStarView()
        case .page5:
            MemoryWithStarView()
        case .page6:
            SummerView()
        case .page7:
            FallView()
        case .page8:
            WinterView()
        case .page9:
            MyStarResultView_1()
            
            
        }
        
    }

}


extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
