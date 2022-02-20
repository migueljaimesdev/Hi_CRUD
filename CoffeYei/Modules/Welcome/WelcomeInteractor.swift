//
//  WelcomeInteractor.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 20/2/22.
//
//

import Foundation

// MARK: Interactor Input (Presenter -> Interactor)
protocol WelcomeInteractorInput {
    
}

// MARK: Interactor Output (Interactor -> Presenter)
protocol WelcomeInteractorOutput {
    
}

class WelcomeInteractor: Interactor {
    
    // MARK: Properties
    internal var output: WelcomeInteractorOutput
    
    init(output: WelcomeInteractorOutput) { self.output = output }
    
}

extension WelcomeInteractor: WelcomeInteractorInput {

}
