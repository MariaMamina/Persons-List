//
//  DetailsViewController.swift
//  Persons List
//
//  Created by Maria Mamina on 17.02.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        title = person.fulName
    }
}
