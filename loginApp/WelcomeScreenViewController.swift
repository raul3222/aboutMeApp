//
//  WelcomeScreenViewController.swift
//  loginApp
//
//  Created by Raul Shafigin on 26.10.2021.
//

import UIKit

class WelcomeScreenViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = userName{
        welcomeLabel.text = "Welcome, \(name)!"
        }

    }

   
}
