//
//  WeaponsStructs.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/13/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

struct Weapon : DamageWeaponProtocol, AccuracyWeaponProtocol{
   
    let name: String = ""
    let weight: Double = 0
    let weaponType: WeaponType
    let damageType: DamageType
    
    var baseDamage: Double
    var hitRate: Double
    
    func hitOrMiss(a: Weapon, b: Weapon) -> Bool {
        var hit = Bool()
        if a.hitRate > b.hitRate {
            hit = true
        } else {
            hit = false
        }
        return hit
    }

}

enum WeaponType {
    case sword
    case hammer
    case spear
}

enum DamageType {
    case slash
    case blunt
    case pierce
}
