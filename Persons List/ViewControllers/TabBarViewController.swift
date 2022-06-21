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
    

    
    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarController = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = tabBarController.viewControllers else { return }
//
//        viewControllers.forEach {
//            if let smallNavigationVC = $0 as? UINavigationController {
//                let smallPersonsListVC = smallNavigationVC.topViewController as! SmallPersonsListViewController
//                smallPersonsListVC.persons = persons
//            }
//        }
//    }

}
