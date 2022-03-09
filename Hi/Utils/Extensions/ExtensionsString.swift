//
//  ExtensionsString.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 20/2/22.
//

import Foundation

extension String {
    
    func toDate(withFormat format: String = "yyyy-MM-dd'T'HH:mm:ss")-> Date?{
            let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
            dateFormatter.dateFormat = format
            let date = dateFormatter.date(from: self)

            return date
        }


    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
