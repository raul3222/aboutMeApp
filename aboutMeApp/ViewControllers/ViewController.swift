//
//  ViewController.swift
//  loginApp
//
//  Created by Raul Shafigin on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    private let userName = "User"
    private let password = "12345"
    var user = UserInfo()
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeScreenVC = segue.destination as? WelcomeScreenViewController else { return }
//        welcomeScreenVC.userName = user.fullName
        let tabBarController = segue.destination as! UITabBarController

        for viewController in tabBarController.viewControllers! {
            if let welcomeScreenVC = viewController as? WelcomeScreenViewController{
                welcomeScreenVC.userName = user.fullName
            }
            else if let navigationVC = viewController as? UINavigationController{
                let aboutVC = navigationVC.topViewController as! AboutMeViewController
                aboutVC.name = user.fullName
                aboutVC.date = user.dateOfBirth
                aboutVC.city = user.cityOfResidence
            }

        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
    }
    @IBAction func loginPressed() {
        if userNameTF.text != user.userName || passwordTF.text != user.password {
            showAlert(title: "User name or password incorrect", message: "Please enter correct user name and password")
            }
        }
    @IBAction func forgotUNamePressed() {
        showAlert(title: "", message: "Your user name is \(user.userName)")
    }
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "", message: "Your password is \(user.password)")
    }
    
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.passwordTF.text = ""}
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension ViewController: UITextFieldDelegate{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }

}
