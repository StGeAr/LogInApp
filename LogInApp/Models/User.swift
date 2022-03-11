//
//  File.swift
//  LogInApp
//
//  Created by Герман Ставицкий on 11.03.2022.
//

import Foundation
import UIKit

struct User {
    let userName: String
    let password: String
    var person: Person
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let city: String
    let information: String
    let photo: UIImage
}

let german = Person(
    name: "German",
    surname: "Stavitskiy",
    age: 30,
    city: "Moscow",
    information: "I think you know everything about me.",
    photo: UIImage(named: "togetherPhoto")!
)
