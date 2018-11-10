//
//  ViewController.swift
//  IML
//
//  Created by Roderick Presswood on 9/19/18.
//  Copyright © 2018 Roderick Presswood. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class MainViewController: UIViewController {
    //set up model object, buttons, and labels
//    let player: Player!
    var name = ""
    
    let player = Player()
    
    @IBOutlet weak var playerName: UILabel!
    
    @IBOutlet weak var currentLevel: UILabel!
    
    @IBOutlet weak var xpCounter: UILabel!
    
    @IBOutlet weak var playerProfileImage: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerName.text = name
        
        
    }


    @IBAction func menuButtonPressed(_ sender: Any) {
        
    }
    
}

// MARK : Add Name to Main View


// MARK : Add Xp To Main View

// MARK : Add UI Image to profile image view

// MARK:  (Optional) Create a 'Choose a task button to segue to the task tab'


// MARK: Program the Progress Bar to update on xp gained and reset on level up


// MARK: Function to Save and Load data??
