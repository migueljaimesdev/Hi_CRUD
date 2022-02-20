//
//  RegisterViewController.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 20/2/22.
//  
//

import UIKit

class RegisterViewController: UIViewController {

    // MARK: - Properties
    lazy var presenter = RegisterPresenter(output: self)
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.onViewDidLoad()
        self.setupNavigationBar()
    }
    
    func setupNavigationBar(){
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "titleSignInScreenNav".localized()
    }
    
}

extension RegisterViewController: RegisterPresenterOutput {
    // TODO: Implement View Output Methods
}
