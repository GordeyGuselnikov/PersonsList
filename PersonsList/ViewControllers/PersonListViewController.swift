//
//  PersonListViewController.swift
//  PersonsList
//
//  Created by Гордей Гусельников on 10.06.2020.
//  Copyright © 2020 gordeyStudio. All rights reserved.
//

import UIKit

class PersonListViewController: UITableViewController {

    var persons: [Person] = []
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personList", for: indexPath)
        
        cell.textLabel?.text = persons[indexPath.row].fullName
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //guard segue.identifier == "Detail" else { return }
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! PersonDetailsViewController
            detailVC.person = persons[indexPath.row]
        }
    }
    

}
