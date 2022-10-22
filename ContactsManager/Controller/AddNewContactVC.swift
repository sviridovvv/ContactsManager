//
//  AddNewContactVC.swift
//  ContactsManager
//
//  Created by Владимир Свиридов on 22.10.2022.
//

import UIKit

class AddNewContactVC: UIViewController {

    @IBOutlet var firstNameLabel: UILabel! {
        didSet {
            firstNameLabel.text = "First name"
            firstNameLabel.font = AppFonts.labelFont
        }
    }

    @IBOutlet var lastNameLabel: UILabel! {
        didSet {
            lastNameLabel.text = "Last name"
            lastNameLabel.font = AppFonts.labelFont
        }
    }

    @IBOutlet var phoneNumberLabel: UILabel! {
        didSet {
            phoneNumberLabel.text = "Phone number"
            phoneNumberLabel.font = AppFonts.labelFont
        }
    }

    @IBOutlet var emailLabel: UILabel! {
        didSet {
            emailLabel.text = "Email"
            emailLabel.font = AppFonts.labelFont
        }
    }

    @IBOutlet var addButton: UIButton! {
        didSet {
            addButton.setTitle("Add contact", for: .normal)
            addButton.setTitleColor(.black, for: .normal)
            addButton.setTitleColor(.gray, for: .highlighted)
            addButton.titleLabel?.font = AppFonts.buttonFont
            addButton.layer.cornerRadius = 5
            addButton.layer.borderWidth = 1
        }
    }

    @IBAction func addButtonTapped(_ sender: Any) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

    private func configure() {
        self.navigationItem.title = "Add contact"
    }
}
