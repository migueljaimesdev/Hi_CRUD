//
//  User.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 23/2/22.
//

import Foundation

class User: Codable {
    let name: String?
    let birthdate: String?
    let id: Int?

    init(name: String?, birthdate: String?, id: Int?) {
        self.name = name
        self.birthdate = birthdate
        self.id = id
    }
}
