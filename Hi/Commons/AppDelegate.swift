//
//  AppDelegate.swift
//  PlatziTweet
//
//  Created by  Miguel Jaimes on 21/12/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navController = UINavigationController()
        let viewController = Router.sharedInstance.listUsersViewController()

        navController.viewControllers = [viewController]
     
        window = UIWindow()
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }
    
}

