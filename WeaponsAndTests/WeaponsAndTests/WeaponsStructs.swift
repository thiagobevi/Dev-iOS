//
//  WeaponsStructs.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/13/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

struct Weapon : DamageWeaponProtocol, AccuracyWeaponProtocol, Hashable {
    
    var baseDamage: Double
    var damageType: DamageType
    
    var hitRate: Double
    var atackSpeed: Double
    
    var name: String = ""
    let weaponType: WeaponType
}

enum WeaponType {
    case sword
    case axe
    case spear
}
    
enum DamageType {
    case slash
    case blunt
    case pierce
}

protocol DamageWeaponProtocol {
    var baseDamage: Double {get}
    var damageType: DamageType {get}
}

protocol AccuracyWeaponProtocol {
    var hitRate: Double {get}
    var atackSpeed: Double {get}
}

