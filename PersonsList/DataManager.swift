//
//  DataManager.swift
//  PersonsList
//
//  Created by Guselnikov Gordey on 5/26/23.
//  Copyright © 2023 gordeyStudio. All rights reserved.
//

import Foundation

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
