//
//  DataManager.swift
//  PersonsList
//
//  Created by Гордей Гусельников on 10.06.2020.
//  Copyright © 2020 gordeyStudio. All rights reserved.
//

import Foundation
//extension Person {
//    static func getPersons() -> [Person] {
//        var persons = [Person]()
//        var firstNames = ["Ivan", "Alex", "Den", "Anya",
//                          "Mark", "David", "Steve"]
//
//        var lastNames = ["Smith", "Fischer", "Muller",
//                         "Ivanov", "McLaren", "Jobs", "Jackson"]
//
//        var phoneNumbers = ["79234071212", "79234071213","79234071214",
//                            "79234071215","79234071216","79234071217",
//                            "79234071218"]
//
//        var eMails = ["123@ru.ru", "asd@mail.ru", "zxc@gmail.com",
//                      "1234asxs@icloud.com", "djhfbj@mail.com",
//                      "ivan@gmail.com", "uycf@icloud.ru"]
//
//        firstNames.shuffle()
//        lastNames.shuffle()
//        phoneNumbers.shuffle()
//        eMails.shuffle()
//
//        for i in 0...firstNames.count - 1 {
//            let person = Person(firstName: firstNames[i], lastName: lastNames[i], phoneNumber: phoneNumbers[i], eMail: eMails[i])
//            persons.append(person)
//        }
//        return persons
//    }
//}
class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    var firstNames = ["Ivan", "Alex", "Den", "Anya",
                      "Mark", "David", "Steve"]
    
    var lastNames = ["Smith", "Fischer", "Muller",
                     "Ivanov", "McLaren", "Jobs", "Jackson"]
    
    var phoneNumbers = ["79234071212", "79234071213","79234071214",
                        "79234071215","79234071216","79234071217",
                        "79234071218"]
    
    var eMails = ["123@ru.ru", "asd@mail.ru", "zxc@gmail.com",
                  "1234asxs@icloud.com", "djhfbj@mail.com",
                  "ivan@gmail.com", "uycf@icloud.ru"]
    
}
