//
//  ViewController.swift
//  ContactsManager
//
//  Created by Владимир Свиридов on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var contacts: [ContactModelItem] = []
    
    private var contactView: ContactView! {
        guard isViewLoaded else { return nil }
        return (view as! ContactView)
    }
    private lazy var contactModel = getContactModel() as! ContactModel

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() {
        
        contacts = contactModel.contacts
        contactView.tableView.dataSource = self
        contactView.tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.contactView.tableView.dequeueReusableCell(withIdentifier: "ContactCell") as! ContactViewCell
        
        cell.tag = indexPath.row
        
        if contacts.indices.contains(indexPath.row) && cell.tag == indexPath.row {
            cell.configure(item: self.contacts[indexPath.row])
        }
        
        return cell
    }
    

}

extension ViewController: UITableViewDelegate {}

extension ViewController: ContactModelProtocol {
    func getContactModel() -> ContactModelProtocol {
        return ContactModel()
    }
}
