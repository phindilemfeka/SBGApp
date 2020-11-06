//
//  MethodsTableViewController.swift
//  Standardbank App
//
//  Created by Phindile on 2020/11/04.
//  Copyright © 2020 Phindile Mfeka. All rights reserved.
//

import UIKit

var methods = ["With fingerprint",
               "Voice recognition",
               "Face Recognition",
               "With 4-digit PIN"].shuffled()

var heading = "Choose How to Sign In"

var methodsIndex = 0

class MethodsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewDidDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return methods.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Choose How to Sign In"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell",for: indexPath)
        cell.textLabel?.text = methods[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        methodsIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }

}
