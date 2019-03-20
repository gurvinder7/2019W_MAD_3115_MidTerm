//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var lblUserName: UITextField!
    @IBOutlet weak var lblPassword: UITextField!
    @IBOutlet weak var lblRememberMe: UISwitch!
    let username = "admin"
    let password = "123"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnLogin(_ sender: UIButton) {
        
        if(lblUserName.text == username && lblPassword.text == password){
                let userDefault = UserDefaults.standard
            if(lblRememberMe.isOn){
        
                userDefault.set(lblUserName.text, forKey: "username")
                userDefault.set(lblPassword, forKey: "password")
            }else{
                    userDefault.removeObject(forKey: "username")
                    userDefault.removeObject(forKey: "password")
                
            }
            
            
            
        }else{
            let alertController = UIAlertController(title: "Error", message: "Username and password is invalid", preferredStyle: .alert)
            let okbuton = UIAlertAction(title: "ok", style: .default, handler: nil)
            let Cancelbuton = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
            alertController.addAction(okbuton)
            alertController.addAction(Cancelbuton)
            self.present(alertController,animated: true)
            
        }
        
    }
}

