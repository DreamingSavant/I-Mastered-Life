//
//  FirstTimeViewController.swift
//  IML
//
//  Created by Roderick Presswood on 11/8/18.
//  Copyright © 2018 Roderick Presswood. All rights reserved.
//

import UIKit
import CoreData

class FirstTimeViewController: UIViewController {

//    var playerClass: Player!
    var nameText = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    // This View Controller will only be used once upon the first time the app is being used.
    
    // MARK: Make func that prepares for segue on initial opening of app
    
    
    
    @IBAction func continueButtonPressed(_ sender: UIStoryboardSegue) {
        self.nameText = nameTextField.text!
        UserDefaults.standard.set(true, forKey: "firstTimer")
        
        performSegue(withIdentifier: "toMainTabView", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "toMainTabView" {
            let barViewControllers = segue.destination as! UITabBarController
            let nav = barViewControllers.viewControllers![0] as! UINavigationController
            let destination = nav.topViewController as! MainViewController
            destination.name = self.nameText

        }
    }
    
    
    // MARK: Function to Save and Load data??
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
