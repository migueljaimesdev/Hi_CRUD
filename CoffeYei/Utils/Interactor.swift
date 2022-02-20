//
//  Interactor.swift
//  CoffeYei
//
//  Created by Miguel Jaimes on 20/2/22.
//

import Foundation

protocol Interactor {
    associatedtype T
    var output: T { get set }
}

protocol Presenter {
    associatedtype T
    var output: T { get set }
}

struct LocalizableString {
    var key: String
    
    init(_ key: String) {
        self.key = key
    }
    
    func resolve() -> String {
        NSLocalizedString(key, comment: "")
    }
}

extension LocalizableString: ExpressibleByStringLiteral {
    init(stringLiteral value: StringLiteralType) {
        key = value
    }
}

