//
//  WebView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/19.
//

import Foundation
import WebKit
import SwiftUI


struct UserDetailWebView: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> some UIView {
        
        let url = URL(string: self.url)
        let request = URLRequest(url: url!)
        
        let wkWebView = WKWebView()
        wkWebView.load(request)
        
        return wkWebView

    }
    
    // for UIViewRepresentable Protocol
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}
