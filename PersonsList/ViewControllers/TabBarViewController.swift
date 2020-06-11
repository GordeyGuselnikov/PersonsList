//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Гордей Гусельников on 11.06.2020.
//  Copyright © 2020 gordeyStudio. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers(with: persons)
    }

    private func setupViewControllers(with persons: [Person]) {
        let personListVC = viewControllers?.first as! PersonListViewController
        let secondPersonListVC = viewControllers?.last as! SecondPersonListViewController
        
        personListVC.persons = persons
        secondPersonListVC.persons = persons
    }
}
