//
//  TabBarViewController.swift
//  Persons List
//
//  Created by Вячеслав Турчак on 20.06.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    private var persons = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        guard let viewControllers = self.viewControllers else { return }
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let smallPersonsListVC = navigationVC.topViewController as? SmallPersonsListViewController {
                smallPersonsListVC.persons = persons
                } else if let fullPersonsListVC = navigationVC.topViewController as? FullPersonsListTableViewController {
                    fullPersonsListVC.persons = persons
                }
            }
        }
    }

}
