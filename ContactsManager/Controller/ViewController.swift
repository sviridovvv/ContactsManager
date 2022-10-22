//
//  ViewController.swift
//  ContactsManager
//
//  Created by Владимир Свиридов on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var contacts: [ContactModelItem]? = []
    
    private var contactView: ContactView! {
        guard isViewLoaded else { return nil }
        return (view as! ContactView)
    }
    private lazy var contactModel = getContactModel() as? ContactModel

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }

    func configure() {

        let addItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(done))
        self.navigationItem.rightBarButtonItem = addItem
        self.navigationItem.rightBarButtonItem?.tintColor = .black
        self.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: AppFonts.titleFont
        ]

        contacts = contactModel?.contacts ?? nil
        contactView.tableView.dataSource = self
        contactView.tableView.delegate = self
    }

    @objc func done() {
        guard let addNewConactVC = self.storyboard?.instantiateViewController(withIdentifier: "addNewContact") as? AddNewContactVC else { return }
        self.navigationController?.pushViewController(addNewConactVC, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.contactView.tableView.dequeueReusableCell(withIdentifier: "ContactCell") as! ContactViewCell
        
        cell.tag = indexPath.row
        guard let contacts = self.contacts else { return cell }
        if contacts.indices.contains(indexPath.row) && cell.tag == indexPath.row {
            cell.configure(item: contacts[indexPath.row])
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
