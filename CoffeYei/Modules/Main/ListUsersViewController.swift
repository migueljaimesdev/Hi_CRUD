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
        setUpTableView()
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
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
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
