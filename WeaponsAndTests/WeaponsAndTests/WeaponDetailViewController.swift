//
//  WeaponDetailViewController.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/13/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class WeaponDetailViewController: UIViewController {
    
    var nameWeapon: String!
    var damageWeapon: Int!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var damageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = nameWeapon
        damageLabel.text = String(damageWeapon)
    }
    
}
