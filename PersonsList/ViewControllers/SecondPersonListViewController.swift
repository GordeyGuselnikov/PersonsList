//
//  SecondPersonListViewController.swift
//  PersonsList
//
//  Created by Гордей Гусельников on 10.06.2020.
//  Copyright © 2020 gordeyStudio. All rights reserved.
//

import UIKit

class SecondPersonListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondPersonList", for: indexPath)
        
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.phoneNumber
            cell.imageView?.image = UIImage(systemName: Contacts.phoneNumber.rawValue)
        default:
            cell.textLabel?.text = person.eMail
            cell.imageView?.image = UIImage(systemName: Contacts.eMail.rawValue)
        }
        
        return cell
    }
}
