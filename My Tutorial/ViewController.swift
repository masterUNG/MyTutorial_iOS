//
//  ViewController.swift
//  My Tutorial
//
//  Created by MasterUNG on 9/4/2562 BE.
//  Copyright © 2562 MasterUNG. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }   // Main Method
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        print("You Click LoginButton")
//        Get Value From TextField
        let email: String = emailTextField.text!
        let password: String = passwordTextField.text!
        print("email ==>> \(email), password ==>> \(password)")
        
//        Check Space
        if (email.count == 0) || (password.count == 0) {
            print("Have Space")
            authenAlert(titleString: "Have Space", messageString: "Please Fill All Blank")
        }   else {
            print("No Space")
            checkAuthen(emailString: email, passwordString: password)
        }
        
    }   // loginButton
    
    func checkAuthen(emailString: String, passwordString: String) -> Void {
        
        Auth.auth().signIn(withEmail: emailString, password: passwordString) { (user, error) in
            if error == nil {
                print("Authen True")
                self.performSegue(withIdentifier: "GoCategory", sender: nil)
            } else {
                let errorString: String = error!.localizedDescription
                print("Error ==>> \(errorString)")
                self.authenAlert(titleString: "Authen False", messageString: errorString)
            }
        }
        
        
    }   // checkAuthen
    
    
    func authenAlert(titleString: String, messageString: String) -> Void {
        
        let objAlert = UIAlertController(title: titleString, message: messageString, preferredStyle: UIAlertController.Style.alert)
        
//        Create Button OK
        objAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            objAlert.dismiss(animated: true, completion: nil)
        }))
        present(objAlert, animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    @IBAction func newRegisterButton(_ sender: UIButton) {
        print("You Click New Register")
        performSegue(withIdentifier: "GoRegister", sender: nil)
    }
    
    


}   // Main Class

