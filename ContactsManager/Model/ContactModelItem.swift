//
//  ContactModel.swift
//  ContactsManager
//
//  Created by Владимир Свиридов on 16.02.2022.
//

import Foundation

struct ContactModelItem {
    
    let firstName: String?
    let lastName: String?
    let phoneNumber: String?
    let email: String?
    
    init(firstName: String, lastName: String, phoneNumber: String, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.email = email
    }
}
