//
//  File.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 23/2/22.
//

import Foundation

extension Date {

    func toString(withFormat format: String = "dd/MM/yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .persian)
        dateFormatter.dateFormat = format
        let str = dateFormatter.string(from: self)

        return str
    }
}
