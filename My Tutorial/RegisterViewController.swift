//
//  RegisterViewController.swift
//  My Tutorial
//
//  Created by MasterUNG on 10/4/2562 BE.
//  Copyright © 2562 MasterUNG. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }   // Main Method
    
    
    
    @IBAction func uploadButton(_ sender: UIBarButtonItem) {
        
        let name: String = nameTextField.text!
        let email: String = emailTextField.text!
        let password: String = passwordTextField.text!
        
        print("name ==>> \(name), email ==>> \(email), password ==>> \(password)")
        
        
        
        
        
    }   // uploadButton
    
    
    
    
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "backHome", sender: nil)
        
    }
    

    

}   // Main Class
