//
//  ContactViewCell.swift
//  ContactsManager
//
//  Created by Владимир Свиридов on 16.02.2022.
//

import UIKit

class ContactViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(item: ContactModelItem) {
        var fullName: String {
            "\(item.firstName ?? "no")" + " " + "\(item.lastName ?? " name")"
        }
        nameLabel.text = fullName
        
        self.selectionStyle = .none
    }
}
