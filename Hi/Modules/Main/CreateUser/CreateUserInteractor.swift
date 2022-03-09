//
//  CreateUserInteractor.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 23/2/22.
//  
//

import Foundation

// MARK: Interactor Input (Presenter -> Interactor)
protocol CreateUserInteractorInput {
    
}

// MARK: Interactor Output (Interactor -> Presenter)
protocol CreateUserInteractorOutput {
    
}

class CreateUserInteractor: Interactor {
    
    // MARK: Properties
    internal var output: CreateUserInteractorOutput
    
    init(output: CreateUserInteractorOutput) { self.output = output }
    
}

extension CreateUserInteractor: CreateUserInteractorInput {

}
