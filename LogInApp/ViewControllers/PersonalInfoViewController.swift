//
//  PersonalInfoViewController.swift
//  LogInApp
//
//  Created by Герман Ставицкий on 11.03.2022.
//

import UIKit

class PersonalInfoViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var nameTF: UILabel!
    @IBOutlet var surnameTF: UILabel!
    @IBOutlet var ageTF: UILabel!
    @IBOutlet var cityTF: UILabel!
    @IBOutlet var personalInformationTF: UILabel!
    
    // MARK: - Properties
    var userName = ""
    var userSurname = ""
    var userAge: Int = 0
    var userCity = ""
    var userInformation = ""
    var userPhoto: UIImage?
    
    // MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.text = userName
        surnameTF.text = userSurname
        ageTF.text = userAge != 0 ? String(userAge) : ""
        cityTF.text = userCity
        personalInformationTF.text = userInformation
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photoVC = segue.destination as? PhotoViewController else { return }
        photoVC.photo = userPhoto
    }
}

//// MARK: - TabBar
//extension WelcomeViewController {
//    func setupTabBar() {
//        tabBarItem.title = "Jopa"
//    }
//}
