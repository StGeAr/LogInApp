//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Герман Ставицкий on 11.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var welcomeMessageTF: UILabel!
    
    // MARK: - Properties
    var userName = ""

    // MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        setupTabBar()
        welcomeMessageTF.text = "Welcome, \(userName)!"
    }
}

// MARK: - TabBar
extension WelcomeViewController {
    func setupTabBar() {
        UITabBar.appearance().unselectedItemTintColor = .red
    }
}

// MARK: - Background
extension WelcomeViewController {
    func setupBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.white.cgColor,
            UIColor.red.cgColor,
            UIColor.blue.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.4, y: 0.2)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
