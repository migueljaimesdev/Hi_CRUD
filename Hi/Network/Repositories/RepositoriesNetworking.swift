//
//  RepositoriesNetworking.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 23/2/22.
//

import Foundation


enum RepositoriesNetworking  {
    case getUsers
}

extension RepositoriesNetworking: TargetType {
    var baseURL: String {
        switch self {
        default:
            return Constant.Server.baseURL
        }
    }
    
    var path: String {
        switch self {
        case .getUsers:
            return "/api/User"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getUsers:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .getUsers:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [:]
        }
    }
    
}
