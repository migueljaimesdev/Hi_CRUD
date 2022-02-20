//
//  RegisterInteractor.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 20/2/22.
//  
//

import Foundation

// MARK: Interactor Input (Presenter -> Interactor)
protocol RegisterInteractorInput {
    
}

// MARK: Interactor Output (Interactor -> Presenter)
protocol RegisterInteractorOutput {
    
}

class RegisterInteractor: Interactor {
    
    // MARK: Properties
    internal var output: RegisterInteractorOutput
    
    init(output: RegisterInteractorOutput) { self.output = output }
    
}

extension RegisterInteractor: RegisterInteractorInput {

}
