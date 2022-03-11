//
//  ViewController.swift
//  LogInApp
//
//  Created by Герман Ставицкий on 11.03.2022.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let user = User(userName: "User", password: "pass", person: german)

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        for viewController in tabBarController.viewControllers! {
            if let welcomeMessageVC = viewController as? WelcomeViewController {
                welcomeMessageVC.userName = german.name
            } else if let navigationVC = viewController as? UINavigationController {
                let personalInfoVC = navigationVC.topViewController as! PersonalInfoViewController
                personalInfoVC.userName = german.name
                personalInfoVC.userSurname = german.surname
                personalInfoVC.userAge = german.age
                personalInfoVC.userCity = german.city
                personalInfoVC.userInformation = german.information
                personalInfoVC.userPhoto = german.photo
            }
        }
    }
    
    // MARK: IBActions
    @IBAction func loginButtonPressed() {
//        guard userNameField.text == user.userName, passwordField.text == user.password else {
//            showAlert(
//                title: "Invalid login or password",
//                message: "Please, enter correct login and password"
//            )
//            return
//        }
        performSegue(withIdentifier: "logIn", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func showAuthorizationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.userName) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }
}

// MARK: - Alert Controller
extension LoginViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Keyboard
extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonPressed()
        }
        return true
    }
}

