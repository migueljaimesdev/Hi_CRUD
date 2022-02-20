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

