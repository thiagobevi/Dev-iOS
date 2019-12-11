//
//  DetailViewcontrollerTest.swift
//  WeaponsAndTestsTests
//
//  Created by Thiago Bevilacqua on 12/2/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import XCTest

@testable import WeaponsAndTests

class DetailViewControllerTest: XCTestCase {
    
    var dvc = DetailViewController()

    var wpn1 = Weapon(baseDamage: 80, damageType: .blunt, hitRate: 89, atackSpeed: 90, name: "GoldSword", weaponType: .sword)
    
    var wpn2 = Weapon(baseDamage: 120, damageType: .slash, hitRate: 50, atackSpeed: 65, name: "HeavyAxe", weaponType: .axe)

    override func setUp() {
      
        
    }
    override func tearDown() {
   
        
    }
    
//    func testIfHitFirstWillBeWeapon1() {
//        //given wpn1.atackSpeed > wpn2.atackSpeed
//
//
//        //when
//       var printAtackSpeed =  dvc.firstAtack(wpn1: wpn1.atackSpeed, wpn2: wpn2.atackSpeed)
//
//        //then
//        XCTAssert(Bool)
    
//    }


}
