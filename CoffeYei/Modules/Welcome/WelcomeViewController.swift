//
//  WelcomeViewController.swift
//  PlatziTweet
//
//  Created by Randstad Technologies on 21/12/21.
//
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeTitleUILabel: UILabel!
    @IBOutlet weak var subWelcomeTitleUILabel: UILabel!
    @IBOutlet weak var SignUpUIBtn: UIButton!
    @IBOutlet weak var SignInUIBtn: UIButton!
    
    // MARK: - Properties
    lazy var presenter = WelcomePresenter(output: self)
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.onViewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.onViewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        presenter.onviewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        //navigationController?.pushViewController(WelcomeRouter.loginViewController(), animated: true)
    }
    
    @IBAction func singInPressed(_ sender: Any) {
        //navigationController?.pushViewController(WelcomeRouter.registerViewController(), animated: true)
    }
}

extension WelcomeViewController: WelcomePresenterOutput {
    // TODO: Implement View Output Methods
}
