//
//  SecondPersonListViewController.swift
//  PersonsList
//
//  Created by Guselnikov Gordey on 5/26/23.
//  Copyright © 2023 gordeyStudio. All rights reserved.
//

import UIKit

final class SecondPersonListViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        persons[section].fullName
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondPerson", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
//        switch indexPath.row {
//        case 0:
//            content.text = person.phoneNumber
//            content.image = UIImage(systemName: Contacts.phoneNumber.rawValue)
//        default:
//            content.text = person.email
//            content.image = UIImage(systemName: Contacts.email.rawValue)
//        }
        
        content.text = person.rows[indexPath.row]
        content.image = indexPath.row == 0
            ? UIImage(systemName: Contacts.phoneNumber.rawValue)
            : UIImage(systemName: Contacts.email.rawValue)
        
        cell.contentConfiguration = content
        return cell
    }
    
}

// MARK: - UITableViewDelegate
extension SecondPersonListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // кастомный Header
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//         // или можно вернуть настроенный Label
//        let contentView = UIView()
//        contentView.backgroundColor = .gray
//        
//        let fullNameLabel = UILabel(
//            frame: CGRect(
//                x: 16,
//                y: 3,
//                width: tableView.frame.width - 32,
//                height: 20
//            )
//        )
//        fullNameLabel.text = persons[section].fullName
//        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
//        fullNameLabel.textColor = .white
//        
//        contentView.addSubview(fullNameLabel)
//        
//        return contentView
//    }
    
    // кастомный Header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell")
        let headerCell = cell as? HeaderTableViewCell
        let person = persons[section]
        headerCell?.nameLabel.text = person.firstName
        headerCell?.surnameLabel.text = person.lastName
        return headerCell
    }
    
    // красивое анимированное раскрытие секции
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: 0.3) {
            view.transform = CGAffineTransform.identity
        }
    }
    
    // высота секции
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        60
    }
    
}
