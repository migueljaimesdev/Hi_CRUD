//
//  RepositoriesAPI.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 23/2/22.
//

import Foundation

protocol RepositoriesAPIProtocol {
    func getUsers(completionHandler: @escaping (Result<[User], NSError>) -> Void)
}

class RepositoriesAPI: BaseAPI<RepositoriesNetworking>, RepositoriesAPIProtocol {
    
    func getUsers(completionHandler: @escaping (Result<[User], NSError>) -> Void) {
        self.fetchData(target: .getUsers, responseClass: [User].self) { (result) in
            completionHandler(result)
        }
    }
    
}
