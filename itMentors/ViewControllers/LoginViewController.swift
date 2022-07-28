//
//  ViewController.swift
//  itMentors
//
//  Created by alexkarav on 26.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginBtnTapped() {
        if loginTF.text == "" && passwordTF.text == "" {
            showAllert(title: "Oops, you enter empty login or password🫥", message: "Enter correct password and login")
        } else {
            performSegue(withIdentifier: "mainVC", sender: nil)
        }
    }
    
    @IBAction func registrationBtnTapped() {
        showAllert(title: "Something went wrong", message: "Will be available in the next development iteration")
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mainVC" {
            let user = User(login: loginTF.text ?? "", password: passwordTF.text ?? "")
            // Realise you logic to transfer User
        }
        //Realise you logic to dev team
    }

}

// MARK: - Extensions
extension LoginViewController {
    func showAllert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
