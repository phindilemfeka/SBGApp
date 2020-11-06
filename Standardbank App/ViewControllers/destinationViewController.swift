//
//  destinationViewController.swift
//  
//
//  Created by Phindile on 2020/11/04.
//

import UIKit

class destinationViewController: UIViewController {
    
    
    @IBOutlet weak var methodLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        methodLabel.text = "Sign in with " + methods[methodsIndex]
    }
}
