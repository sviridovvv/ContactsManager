//
//  AddNewContactVC.swift
//  ContactsManager
//
//  Created by Владимир Свиридов on 22.10.2022.
//

import UIKit

class AddNewContactVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

    private func configure() {
        self.navigationItem.title = "Add contact"
    }
}
