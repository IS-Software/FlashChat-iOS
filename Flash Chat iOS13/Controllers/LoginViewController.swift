//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Nikita Gavrilov on 07.12.2021.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var errAdvice: UILabel!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let e = error {
                    self?.errAdvice.text = e.localizedDescription
                    self?.errAdvice.isHidden = false
                    return
                } else {
                    self?.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
    
}
