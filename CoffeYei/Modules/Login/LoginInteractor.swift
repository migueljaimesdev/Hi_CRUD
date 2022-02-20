//
//  LoginInteractor.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 20/2/22.
//  
//

import Foundation

// MARK: Interactor Input (Presenter -> Interactor)
protocol LoginInteractorInput {
    
}

// MARK: Interactor Output (Interactor -> Presenter)
protocol LoginInteractorOutput {
    
}

class LoginInteractor: Interactor {
    
    // MARK: Properties
    internal var output: LoginInteractorOutput
    
    init(output: LoginInteractorOutput) { self.output = output }
    
}

extension LoginInteractor: LoginInteractorInput {

}
