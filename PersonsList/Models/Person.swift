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
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    var rows: [String] {
        [phoneNumber, email]
    }
}

extension Person {
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let firstNames = DataStorage.shared.firstNames.shuffled()
        let lastNames = DataStorage.shared.lastNames.shuffled()
        let phoneNumbers = DataStorage.shared.phoneNumbers.shuffled()
        let emails = DataStorage.shared.eMails.shuffled()
        
        let iterationCount = min(
            firstNames.count,
            lastNames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}

// Enum for Pictures
enum Contacts: String {
    case phoneNumber = "phone"
    case email = "tray"
}
