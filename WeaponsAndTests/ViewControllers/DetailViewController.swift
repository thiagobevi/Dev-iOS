//
//  DetailViewController.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/28/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var nameWeapon1: String!
    var damageWeapon1: Double!
    var hitRateWeapon1: Double!
    var atkSpdWeapon1: Double!
    
    var nameWeapon2: String!
    var damageWeapon2: Double!
    var hitRateWeapon2: Double!
    var atkSpdWeapon2: Double!
    
    @IBOutlet weak var nameWeapon1Label: UILabel!
    @IBOutlet weak var damageWeapon1Label: UILabel!
    @IBOutlet weak var hitRateWeapon1Label: UILabel!
    @IBOutlet weak var atkSpdWeapon1Label: UILabel!
    
    
    @IBOutlet weak var nameWeapon2Label: UILabel!
    @IBOutlet weak var damageWeapon2Label: UILabel!
    @IBOutlet weak var hitRateWeapon2Label: UILabel!
    @IBOutlet weak var atkSpdWeapon2Label: UILabel!
    
    @IBOutlet weak var bigDamageLabel: UILabel!
    @IBOutlet weak var hitOrNotLabel: UILabel!
    @IBOutlet weak var hitFirstLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstAtack(wpn1: atkSpdWeapon1, wpn2: atkSpdWeapon2)
        hitAtack(hit1: hitRateWeapon1, hit2: hitRateWeapon2)
        
        nameWeapon1Label.text = nameWeapon1
        damageWeapon1Label.text = String(damageWeapon1)
        hitRateWeapon1Label.text = String(hitRateWeapon1)
        atkSpdWeapon1Label.text = String(atkSpdWeapon1)
        
        
        nameWeapon2Label.text = nameWeapon2
        damageWeapon2Label.text = String(damageWeapon2)
        hitRateWeapon2Label.text = String(hitRateWeapon2)
        atkSpdWeapon2Label.text = String(atkSpdWeapon2)
        
    }
    
    func firstAtack(wpn1: Double, wpn2: Double) {
        if wpn1 > wpn2 {
            print("\(nameWeapon1) ataca primeiro")
        } else {
            print("\(nameWeapon2) ataca primeiro")
        }
    }

    func hitAtack(hit1: Double, hit2: Double) {
        let rand1 = Double.random(in: 0..<101)
        print(rand1)
        let rand2 = Double.random(in: 0..<101)
        print(rand2)

        if rand1 <= hit1 {
            print("Atack Hit")
        } else {
            print("Atack miss")
        }

        if rand2 <= hit2 {
            print("Atack 2 Hit")
        } else {
            print("Atack 2 Miss")
        }


    }

        
}
    

