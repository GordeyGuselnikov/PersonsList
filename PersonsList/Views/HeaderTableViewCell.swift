//
//  HeaderTableViewCell.swift
//  PersonsList
//
//  Created by Guselnikov Gordey on 6/1/23.
//  Copyright © 2023 gordeyStudio. All rights reserved.
//

import UIKit

final class HeaderTableViewCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    
    
    @IBAction func phoneButtonPressed() {
        print("Calling \(nameLabel.text ?? "") \(surnameLabel.text ?? "")...")
    }
}
