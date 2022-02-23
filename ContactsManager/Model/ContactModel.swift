//
//  ContactManager.swift
//  ContactsManager
//
//  Created by Владимир Свиридов on 16.02.2022.
//

import Foundation

class ContactModel {
    
    var contacts: [ContactModelItem] = [ContactModelItem(firstName: "Violetta",
                                                 lastName: "Mayhem",
                                                 phoneNumber: "+79093412332",
                                                 email: "first@mail.com"),
                                    ContactModelItem(firstName: "Semen",
                                                 lastName: "Anderson",
                                                 phoneNumber: "+489374157944",
                                                 email: "reuol@mail.com"),
                                    ContactModelItem(firstName: "Mila",
                                                 lastName: "Arhipova",
                                                 phoneNumber: "+79995381832",
                                                 email: "tila123@mail.com"),
                                    ContactModelItem(firstName: "Mike",
                                                 lastName: "Shinoda",
                                                 phoneNumber: "+196753464343",
                                                 email: "best@mail.com"),
                                    ContactModelItem(firstName: "Sofia",
                                                 lastName: "Cute",
                                                 phoneNumber: "+79995246833",
                                                 email: "future@mail.com")]
    
    func addNewContact(firstName: String,
                       lastName: String,
                       phoneNumber: String,
                       email: String) {
        contacts.append(ContactModelItem(firstName: firstName,
                                     lastName: lastName,
                                     phoneNumber: phoneNumber,
                                     email: email))
    }
}

protocol ContactModelProtocol {
    func getContactModel() -> ContactModelProtocol
}

extension ContactModel: ContactModelProtocol {
    func getContactModel() -> ContactModelProtocol {
        return ContactModel()
    }
}
