//
//  PersonDetailsViewController.swift
//  Persons List
//
//  Created by Вячеслав Турчак on 21.06.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "\(person.fullName)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"

    }
}
