//
//  WelcomeRouter.swift
//  PlatziTweet
//
//  Created by Randstad Technologies on 21/12/21.
//
//

import Foundation
import UIKit


class WelcomeRouter: PresenterToRouterWelcomeProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController { WelcomeViewController() }
    
    static func loginViewController() -> UIViewController { LoginViewController() }
    
    static func registerViewController() -> UIViewController { RegisterViewController() }
}
