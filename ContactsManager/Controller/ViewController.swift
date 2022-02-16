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
    private var contactModel = ContactModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() {
        
        updateContacts()
        contactView.tableView.dataSource = self
        contactView.tableView.delegate = self
    }
    
    func updateContacts() {
        contacts = contactModel.getContacts()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.contactView.tableView.dequeueReusableCell(withIdentifier: "ContactCell") as! ContactViewCell
        return cell
    }
    

}

extension ViewController: UITableViewDelegate {}
