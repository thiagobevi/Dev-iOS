//
//  ViewController.swift
//  EggTimer2
//
//  Created by Thiago Bevilacqua on 10/31/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   var softTime = 5
    var mediumTime = 7
    var hardTime = 9
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
  
    @IBAction func hardnessButton(_ sender: UIButton) {
        let hardness = sender.currentTitle
        print(hardness ?? "Error")
        
     
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    

}

