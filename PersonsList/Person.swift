//
//  Person.swift
//  PersonsList
//
//  Created by Guselnikov Gordey on 5/26/23.
//  Copyright © 2023 gordeyStudio. All rights reserved.
//

struct Person {
    
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let eMail: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> [Person] {
        
        var persons: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let eMails = DataManager.shared.eMails.shuffled()
        
        for index in 0 ..< firstNames.count {
            let person = Person(firstName: firstNames[index],
                                lastName: lastNames[index],
                                phoneNumber: phoneNumbers[index],
                                eMail: eMails[index])
            persons.append(person)
        }
        
        return persons
    }
}

// Enum for Pictures
enum Contacts: String {
    case phoneNumber = "phone"
    case eMail = "tray"
}
