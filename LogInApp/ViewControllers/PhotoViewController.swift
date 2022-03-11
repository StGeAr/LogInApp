//
//  PhotoViewController.swift
//  LogInApp
//
//  Created by Герман Ставицкий on 11.03.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var photoView: UIImageView!
    
    // MARK: - Properties
    var photo: UIImage?
    
    // MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        photoView.image = photo
    }
}
