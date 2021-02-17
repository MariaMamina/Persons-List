//
//  ListWithSectionsTableViewController.swift
//  Persons List
//
//  Created by Maria Mamina on 17.02.2021.
//

import UIKit

class ListWithSectionsTableViewController: UITableViewController {
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       personsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].fulName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "information", for: indexPath)
        
        let person = personsList[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.image = UIImage (systemName: "phone")
            content.text = person.phoneNumber
        } else {
            content.text = person.email
            content.image = UIImage (systemName: "mail")
        }
        
        cell.contentConfiguration = content

        return cell
    }
}
