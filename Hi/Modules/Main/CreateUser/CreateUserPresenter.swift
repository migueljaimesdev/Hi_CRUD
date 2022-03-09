//
//  CreateUserPresenter.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 23/2/22.
//  
//

import UIKit

// MARK: Router Input (Presenter -> Router)
protocol CreateUserPresenterRouter {
    
}

// MARK: View Input (View -> Presenter)
protocol CreateUserPresenterInput {
    func onViewDidLoad()
}

// MARK: View Output (Presenter -> View)
protocol CreateUserPresenterOutput {
   
}

class CreateUserPresenter: Presenter {

    // MARK: Properties
    

    // MARK: - Init
    internal var output: CreateUserPresenterOutput
    lazy var interactor = CreateUserInteractor (output: self)
    
    init(output: CreateUserPresenterOutput) { self.output = output }
    
}

extension CreateUserPresenter: CreateUserPresenterInput {
    
    func onViewDidLoad() {
    }
    
}

extension CreateUserPresenter: CreateUserInteractorOutput {
    
}
