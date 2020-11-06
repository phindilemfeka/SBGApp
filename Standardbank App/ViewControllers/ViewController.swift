//
//  ViewController.swift
//  Standardbank App
//
//  Created by Phindile on 2020/11/04.
//  Copyright © 2020 Phindile Mfeka. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseUI

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewDidDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func signInButton(_ sender: Any) {
  if usernameField.text?.isEmpty == true{
            print("Username required")
            return
        }
        
        if passwordField.text?.isEmpty == true {
            print("Password required")
            return
        }
        
        signIn()
    }
        
    func signIn() {
        
        Auth.auth().createUser(withEmail: usernameField.text!, password: passwordField.text!) { [weak self] authResult, error in
            guard let user = authResult?.user, error == nil else{
                print("error \(error?.localizedDescription)")
                return
                
            }
        }
        
        performSegue(withIdentifier: "firstsegue", sender: self)
    }
}

    



