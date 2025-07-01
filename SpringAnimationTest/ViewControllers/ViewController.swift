//
//  ViewController.swift
//  SpringAnimationTest
//
//  Created by serj on 30.06.2025.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: SpringLabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.randomAnimation
    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.animation = "zoomOut"
        animationLabel.x = 50
        animationLabel.animate()
        animationLabel.text = animation.description
        
        animationLabel.animateNext { [unowned self] in
            animationLabel.animation = "zoomIn"
            animationLabel.animate()
            
            animationView.animation = animation.name
            animationView.curve = animation.curve
            animationView.duration = animation.duration
            animationView.force = animation.force
            animationView.delay = animation.delay
            animationView.animate()
            
            animation = Animation.randomAnimation
            sender.setTitle("Run \(animation.name)", for: .normal)
        }
    }
}

