//
//  PersonDetailsViewController.swift
//  PersonsList
//
//  Created by Guselnikov Gordey on 5/26/23.
//  Copyright © 2023 gordeyStudio. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var eMailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        eMailLabel.text = "Email: \(person.eMail)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
    }

}
