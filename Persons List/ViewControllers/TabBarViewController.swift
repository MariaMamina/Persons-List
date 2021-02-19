//
//  TabBarViewController.swift
//  Persons List
//
//  Created by Maria Mamina on 19.02.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController(with: persons)
    }
    
    private func setupViewController(with persons: [Person]) {
        let simpleListVC = viewControllers?.first as! SimpleListTableViewController
        let listWithSectionVC = viewControllers?.last as! ListWithSectionsTableViewController
       
        simpleListVC.personsList = persons
        listWithSectionVC.personsList = persons
        
    }

   
}
