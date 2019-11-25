//
//  ViewController.swift
//  ConsumerApp
//
//  Created by Rajat on 11/13/19.
//  Copyright © 2019 Rajat. All rights reserved.
//

import UIKit
import LoginStaticLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signInTapped(_ sender: UIButton) {
        let loginViewController = getLoginScreen(onLogin: {
            self.navigationController?.popViewController(animated: true)
        })
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
}

