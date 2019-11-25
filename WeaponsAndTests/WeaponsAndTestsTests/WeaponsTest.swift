//
//  WeaponsTest.swift
//  WeaponsAndTestsTests
//
//  Created by Thiago Bevilacqua on 11/22/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import XCTest

@testable import WeaponsAndTests

class WeaponTest: XCTestCase {
    var sword: Weapon!
    var axe: Weapon!
    var spear: Weapon!
    
    override func setUp() {
        super .setUp()
        sword = Weapon(name: "BaitaSword", weaponType: .sword, damageType: .slash, baseDamage: 40, hitRate: 90)
        axe = Weapon(name: "SmallAxe", weaponType: .hammer, damageType: .blunt, baseDamage: 60, hitRate: 70)
        spear = Weapon(name: "IronSpear", weaponType: .spear, damageType: .pierce, baseDamage: 30, hitRate: 80)
    }
    
    override func tearDown() {
        super .tearDown()
        sword = nil
        axe = nil
        spear = nil
    }
    
    
    
}
