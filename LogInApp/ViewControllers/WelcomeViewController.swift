//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Герман Ставицкий on 11.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessageTF: UILabel!
    
    var userName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = view.bounds
//        gradientLayer.colors = [
//            UIColor.white.cgColor,
//            UIColor.red.cgColor,
//            UIColor.blue.cgColor
//        ]
//        gradientLayer.startPoint = CGPoint(x: 0.4, y: 0.2)
//        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
//        view.layer.insertSublayer(gradientLayer, at: 0)
        
        welcomeMessageTF.text = "Welcome, \(userName)!"
    }
}
