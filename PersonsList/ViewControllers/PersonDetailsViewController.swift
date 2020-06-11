//
//  PersonDetailsViewController.swift
//  PersonsList
//
//  Created by Гордей Гусельников on 10.06.2020.
//  Copyright © 2020 gordeyStudio. All rights reserved.
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
