//
//  ListUsersRouter.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 22/2/22.
//  
//

import Foundation
import UIKit

class Router: NSObject {
    static let sharedInstance: Router = {
        let instance = Router()
        return instance
    }()
    
    fileprivate var rootWindow: UIWindow!
    fileprivate var rootViewController: UIViewController!
    
    func setWindow(_ window: UIWindow) {
        self.rootWindow = window
    }
    
    func listUsersViewController() -> ListUsersViewController { ListUsersViewController() }
    
    func createUserViewcontroller() -> CreateUserViewController {
        CreateUserViewController() }
}
