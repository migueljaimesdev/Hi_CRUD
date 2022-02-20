//
//  RegisterPresenter.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 20/2/22.
//  
//

import UIKit

// MARK: Router Input (Presenter -> Router)
protocol RegisterPresenterRouter {
    
}

// MARK: View Input (View -> Presenter)
protocol RegisterPresenterInput {
    func onViewDidLoad()
}

// MARK: View Output (Presenter -> View)
protocol RegisterPresenterOutput {
   
}

class RegisterPresenter: Presenter {

    // MARK: Properties
    

    // MARK: - Init
    internal var output: RegisterPresenterOutput
    lazy var interactor = RegisterInteractor (output: self)
    
    init(output: RegisterPresenterOutput) { self.output = output }
    
}

extension RegisterPresenter: RegisterPresenterInput {
    
    func onViewDidLoad() {
    }
    
}

extension RegisterPresenter: RegisterInteractorOutput {
    
}
