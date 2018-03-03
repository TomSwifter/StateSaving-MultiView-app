//
//  ContViewController.swift
//  loginApp
//
//  Created by Tomer Aharoni on 3/2/18.
//  Copyright © 2018 Tomer Aharoni. All rights reserved.
//

import UIKit

class ContViewController: UIViewController {

    var tmp = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        print("TableViewController UNWIND")
        UserDefaults.standard.removeObject(forKey: "Username")
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
       
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //what happens is, first I'm sending the value of username from this
        //vc to the tableView vc.
        //then, in the tableView vc i'm taking that value and passing it to a cell
        print("PREPARE TO SHOW SecondViewController")
        let TableViewController = segue.destination as! TableViewController
        TableViewController.usernameToCell = tmp
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
    {
        return true
    }
}
