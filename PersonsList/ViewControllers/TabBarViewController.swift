//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Guselnikov Gordey on 5/26/23.
//  Copyright © 2023 gordeyStudio. All rights reserved.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personListVC = viewControllers?.first as? PersonListViewController else { return }
        guard let secondPersonListVC = viewControllers?.last as? SecondPersonListViewController else { return }
        
        let persons = Person.getPersons()
        
        personListVC.persons = persons
        secondPersonListVC.persons = persons
    }
}
