//
//  ListUsersViewController.swift
//  CoffeYei
//
//  Created by Randstad Technologies on 22/2/22.
//  
//

import UIKit
import NVActivityIndicatorView

class ListUsersViewController: UIViewController{
    
    // MARK: - Properties UI
    @IBOutlet weak var usersTableView: UITableView!
    
    // MARK: - Properties
    var users = [User]()
    lazy var presenter = ListUsersPresenter(output: self)
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.onViewDidLoad()
        registerCustomCells()
        setUpNavigationBar()
        setUpTableView()
    }
    
    func setUpNavigationBar(){
        self.title = "userListTitle".localized()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addUser))
    }
    
    @objc func addUser() {
        self.navigationController?.pushViewController(Router.sharedInstance.createUserViewcontroller(), animated: true)
      }
}

extension ListUsersViewController: ListUsersPresenterOutput, NVActivityIndicatorViewable {
    func startLoading() {
        startAnimating(type: .ballRotateChase)
    }
    
    func finishLoading() {
        stopAnimating()
    }
    
    func setUsers(users: [User]) {
        self.users = users
        usersTableView?.reloadData()
    }
    
    func showAlert(title: String, message: String) {
      alertView(title: title, message: message)
    }
}

extension ListUsersViewController: UITableViewDelegate {}

extension ListUsersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = usersTableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell
        
        let userName = users[indexPath.row].name
        cell.userName.text = userName
        let birthdate = users[indexPath.row].birthdate?.toDate()?.toString()
        cell.birthdayLabel.text = birthdate
        
        return cell
    }
}

// MARK:- registerCustomCells
extension ListUsersViewController {
    func setUpTableView(){
        usersTableView?.delegate = self
        usersTableView?.dataSource = self
        usersTableView?.reloadData()
    }
    
    func registerCustomCells() {
        let cellNib = UINib(nibName: "UserTableViewCell", bundle: nil)
        usersTableView.register(cellNib, forCellReuseIdentifier: "UserTableViewCell")
    }
}
