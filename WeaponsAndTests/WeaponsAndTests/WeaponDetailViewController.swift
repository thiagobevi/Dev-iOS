//
//  WeaponDetailViewController.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/13/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class WeaponDetailViewController: UIViewController {
    
    var nameWeapon1: String!
    var damageWeapon1: Int!
    
    var nameWeapon2: String!
    var damageWeapon2: Int!
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var damageLabel: UILabel!
    
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var damageLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = nameWeapon1
        damageLabel.text = String(damageWeapon1)
        
        nameLabel2.text = nameWeapon2
        damageLabel2.text = String(damageWeapon2)
        
        
        
    }
    
}
