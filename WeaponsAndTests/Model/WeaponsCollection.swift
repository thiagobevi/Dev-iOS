//
//  WeaponsCollection.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/29/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation

class WeaponsCollection {
    
    func axe() -> [Weapon] {
        let bigAxe = Weapon(baseDamage: 95, damageType: .blunt, hitRate: 85, atackSpeed: 70, name: "BigAxe", weaponType: .axe)
        let ironAxe = Weapon(baseDamage: 60, damageType: .blunt, hitRate: 90, atackSpeed: 50, name: "IronAxe", weaponType: .axe)
        return [bigAxe, ironAxe]
    }
    
    func sword() -> [Weapon] {
        let longSword = Weapon(baseDamage: 70, damageType: .slash, hitRate: 90, atackSpeed: 80, name: "LongSword", weaponType: .sword)
        let goldSword = Weapon(baseDamage: 80, damageType: .slash, hitRate: 92, atackSpeed: 85, name: "GoldSword", weaponType: .sword)
        let iceSword = Weapon(baseDamage: 60, damageType: .slash, hitRate: 80, atackSpeed: 70, name: "IceSword", weaponType: .sword)
        return [longSword, goldSword, iceSword]
    }
    
    func spear() -> [Weapon] {
        let ironSpear = Weapon(baseDamage: 74, damageType: .pierce, hitRate: 99, atackSpeed: 99, name: "IronSpear", weaponType: .spear)
        return [ironSpear]
    }
}
