//
//  LoginViewController.swift
//  LoginStaticLibrary
//
//  Created by Rajat on 11/13/19.
//  Copyright © 2019 Rajat. All rights reserved.
//

import UIKit

public func getLoginScreen(onLogin: @escaping ()->()) -> UIViewController {
    let bundlePath = Bundle.main.path(forResource: "LoginLibraryResourceBundle", ofType: "bundle")!
    let bundle = Bundle(path: bundlePath)!
    let loginViewController = LoginViewController(nibName: "LoginScreen", bundle: bundle)
    loginViewController.onLogin = onLogin
    return loginViewController
}

class LoginViewController: UIViewController {
    // Outlets
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    //Properties
    var onLogin: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginTapped(_ sender: UIButton) {
        self.onLogin?()
    }
}
