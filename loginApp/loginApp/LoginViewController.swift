//
//  LoginViewController.swift
//  loginApp
//
//  Created by Tomer Aharoni on 3/2/18.
//  Copyright © 2018 Tomer Aharoni. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    
    override func viewWillAppear(_ animated: Bool) {
        //print("First View Controller will appear")
        passwordTextField.text = ""
        usernameTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("First View Controller loaded")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //what happens is, first I'm sending the value of username from this
        //ViewController to the container VC and from there to to the encapsulated tableView
        //then, in the tableView vc i'm taking that value and passing it to a cell
        
        print("PREPARE TO SHOW SecondViewController")
        let ContViewController = segue.destination as! ContViewController
        ContViewController.tmp = usernameTextField.text!
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
    {
        //wont do anything without a username (any username) and a a valid password (ImCool123)
        if(usernameTextField.text == "" || passwordTextField.text != "ImCool123"){
            print("Can't perform - bad passowrd/input")
            return false
        }
        print("Perfroming segue")
        //putting username inside userDefult
        UserDefaults.standard.set(usernameTextField.text!, forKey: "Username")
        return true
    }
    
}
