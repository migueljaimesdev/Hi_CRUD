//
//  ListUsersPresenter.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 22/2/22.
//  
//

import UIKit

// MARK: Router Input (Presenter -> Router)
protocol ListUsersPresenterRouter {
    
}

// MARK: View Input (View -> Presenter)
protocol ListUsersPresenterInput {
    func onViewDidLoad()
}

// MARK: View Output (Presenter -> View)
protocol ListUsersPresenterOutput {
    func startLoading()
    func finishLoading()
    func setUsers(users: [User])
    func showAlert(title: String, message: String)
}

class ListUsersPresenter: Presenter {
    
    let api: RepositoriesAPIProtocol = RepositoriesAPI()
    
    // MARK: - Init
    internal var output: ListUsersPresenterOutput
    
    init(output: ListUsersPresenterOutput) { self.output = output }
}

extension ListUsersPresenter: ListUsersPresenterInput {
    
    func onViewDidLoad() {
        self.fetchUsers()
    }
    
    func fetchUsers() {
        output.startLoading()
        api.getUsers(completionHandler: {(result) in
            self.output.finishLoading()
            switch result {
            case .success(let users):
                self.output.setUsers(users: users)
                print(users)
            case .failure(_):
                self.output.showAlert(title: "Error", message: "errorUserList".localized())
            }
        })
    }
}

