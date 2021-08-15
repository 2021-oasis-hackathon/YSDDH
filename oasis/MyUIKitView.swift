//
//  MyUIKitView.swift
//  oasis
//
//  Created by 최은기 on 2021/08/15.
//

import Foundation
import SwiftUI
import UIKit
import ARKit

struct MyUIKitView: UIViewRepresentable {
    typealias UIViewType = UIView
    
    var view = UILabel()
    
    view.frame = CGRect(x: 0, y: 0, width: 360, height: 640)

    view.backgroundColor = .white

    
    func makeUIView(context: Context) -> UIViewType {
        let myView = UIView()
        return myView
    }
    
    func updateUIView(_ view: UIViewType, context: Context) {
        

        let layer0 = CAGradientLayer()

        layer0.colors = [

          UIColor(red: 0.416, green: 0.557, blue: 0.898, alpha: 1).cgColor,

          UIColor(red: 0.539, green: 0.282, blue: 0.791, alpha: 0.62).cgColor,

          UIColor(red: 0.617, green: 0.16, blue: 0.692, alpha: 0.27).cgColor

        ]

        layer0.locations = [0, 0.72, 1]

        layer0.startPoint = CGPoint(x: 0.25, y: 0.5)

        layer0.endPoint = CGPoint(x: 0.75, y: 0.5)

        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: -1.12, b: -0.71, c: 0.71, d: -0.36, tx: 0.44, ty: 0.94))

        layer0.bounds = view.bounds.insetBy(dx: -0.5*view.bounds.size.width, dy: -0.5*view.bounds.size.height)

        layer0.position = view.center

        view.layer.addSublayer(layer0)

        var parent = self.view

        parent.addSubview(view)

        view.translatesAutoresizingMaskIntoConstraints = false

        view.widthAnchor.constraint(equalToConstant: 360).isActive = true

        view.heightAnchor.constraint(equalToConstant: 640).isActive = true

        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true

        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 0).isActive = true
        
    }
}
