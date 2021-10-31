//
//  AboutMeViewController.swift
//  loginApp
//
//  Created by Raul Shafigin on 29.10.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    @IBOutlet var fullName: UILabel!
    @IBOutlet var dateOfBirth: UILabel!
    @IBOutlet var cityOfResidence: UILabel!
    
    var name: String!
    var date: String!
    var city: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            fullName.text = name
        }
        if let date = date {
            dateOfBirth.text = date
        }
        if let city = city {
            cityOfResidence.text = city
        }
        
    }
    

}
