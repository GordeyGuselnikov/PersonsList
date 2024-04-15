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
        let daraStore = DataStore.shared
        
        let firstNames = daraStore.firstNames.shuffled()
        let lastNames = daraStore.lastNames.shuffled()
        let phoneNumbers = daraStore.phoneNumbers.shuffled()
        let emails = daraStore.eMails.shuffled()
        
        let iterationCount = min(
            firstNames.count,
            lastNames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0 ..< iterationCount {
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
