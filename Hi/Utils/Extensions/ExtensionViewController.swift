//
//  ExtensionViewController.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 23/2/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    func alertView(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
