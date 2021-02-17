//
//  SimpleListTableViewController.swift
//  Persons List
//
//  Created by Maria Mamina on 16.02.2021.
//

import UIKit

class SimpleListTableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)

        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fulName
        cell.contentConfiguration = content

        return cell
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as! DetailsViewController
        guard  let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personsList[indexPath.row]
        detailsVC.person = person
    }

}
