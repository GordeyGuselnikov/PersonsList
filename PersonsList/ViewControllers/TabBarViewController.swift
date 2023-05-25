//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Guselnikov Gordey on 5/26/23.
//  Copyright © 2023 gordeyStudio. All rights reserved.
//

import UIKit

final class TabBarViewController: UITabBarController {

    private let persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        
        setupViewControllers(with: persons)
    }

    private func setupViewControllers(with persons: [Person]) {

        guard let personListVC = viewControllers?.first as? PersonListViewController else { return }
        personListVC.persons = persons
        
        guard let secondPersonListVC = viewControllers?.last as? SecondPersonListViewController else { return }
        secondPersonListVC.persons = persons
    }
}
