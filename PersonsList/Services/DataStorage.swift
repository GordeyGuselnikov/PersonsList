//
//  DataManager.swift
//  PersonsList
//
//  Created by Guselnikov Gordey on 5/26/23.
//  Copyright © 2023 gordeyStudio. All rights reserved.
//

import Foundation

final class DataStorage {
    
    static let shared = DataStorage()
    
    let firstNames = ["Ivan", "Alex", "Den", "Anya", "Mark", "David", "Steve"]
    
    let lastNames = ["Smith", "Fischer", "Muller", "Ivanov", "McLaren", "Jobs", "Jackson"]
    
    let phoneNumbers = ["79234071212", "79234071213","79234071214", "79234071215","79234071216","79234071217", "79234071218"]
    
    let eMails = ["123@ru.ru", "asd@mail.ru", "zxc@gmail.com", "1234asxs@icloud.com", "djhfbj@mail.com", "ivan@gmail.com", "uycf@icloud.ru"]
    
    private init() {}
    
}
