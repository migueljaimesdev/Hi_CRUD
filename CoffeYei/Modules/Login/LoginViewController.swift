//
//  LoginViewController.swift
//  PlatziTweet
//
//  Created by Randstad Technologies on 20/2/22.
//
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Properties
    lazy var presenter = LoginPresenter(output: self)
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
        presenter.onViewDidLoad()
    }
    
    func setupNavigationBar(){
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "titleLoginScreenNav".localized()
    }
}

extension LoginViewController: LoginPresenterOutput {
    // TODO: Implement View Output Methods
}
