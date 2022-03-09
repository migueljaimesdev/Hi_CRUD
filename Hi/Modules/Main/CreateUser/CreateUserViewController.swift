//
//  CreateUserViewController.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 23/2/22.
//  
//

import UIKit

class CreateUserViewController: UIViewController {

    // MARK: - Properties
    lazy var presenter = CreateUserPresenter(output: self)
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Ha llegado a la viewcontroller")
        presenter.onViewDidLoad()
    }
    
}

extension CreateUserViewController: CreateUserPresenterOutput {
    // TODO: Implement View Output Methods
}
