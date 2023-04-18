//
//  LottieView.swift
//  Breathe
//
//  Created by Dominika Kotásková on 2023-04-18.
//

import Lottie
import SwiftUI
import UIKit

struct Lottie: UIViewRepresentable {
    var name: String
    typealias UIViewType = UIView
    
    func makeUIView(context: UIViewRepresentableContext<Lottie>) -> UIView {
        let view = UIView(frame: .zero)
        
        // add animation
        let animationView = AnimationView()
        animationView.animation = Animation.named(name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Lottie>) {
        // do nothing
    }
}
