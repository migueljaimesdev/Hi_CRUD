//
//  LoginPresenter.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 20/2/22.
//  
//

import UIKit

// MARK: Router Input (Presenter -> Router)
protocol LoginPresenterRouter {
    
}

// MARK: View Input (View -> Presenter)
protocol LoginPresenterInput {
    func onViewDidLoad()
}

// MARK: View Output (Presenter -> View)
protocol LoginPresenterOutput {
   
}

class LoginPresenter: Presenter {

    // MARK: Properties
    

    // MARK: - Init
    internal var output: LoginPresenterOutput
    lazy var interactor = LoginInteractor (output: self)
    
    init(output: LoginPresenterOutput) { self.output = output }
    
}

extension LoginPresenter: LoginPresenterInput {
    
    func onViewDidLoad() {
    }
    
}

extension LoginPresenter: LoginInteractorOutput {
    
}
