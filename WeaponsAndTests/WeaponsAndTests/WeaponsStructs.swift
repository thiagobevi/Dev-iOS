//
//  WeaponsStructs.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/13/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

struct Weapon : DamageWeaponProtocol, AccuracyWeaponProtocol, Hashable {
    
    var baseDamage: Int
    var damageType: DamageType
    
    var hitRate: Int
    var atackSpeed: Int
    
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
    var baseDamage: Int {get}
    var damageType: DamageType {get}
}

protocol AccuracyWeaponProtocol {
    var hitRate: Int {get}
    var atackSpeed: Int {get}
}

