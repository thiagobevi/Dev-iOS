//
//  PokemonTests.swift
//  iOSUnitTestIntroTests
//
//  Created by Thiago Bevilacqua on 11/12/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import XCTest
@testable import iOSUnitTestIntro

class PokemonTests: XCTestCase {

    var squirtle: Pokemon!
    var charmander: Pokemon!
    var psyduck: Pokemon!
    
    override func setUp() {
        super.setUp()
        squirtle = Pokemon(type: .Water, atackType: .Water)
        charmander = Pokemon(type: .Fire, atackType: .Fire)
        psyduck = Pokemon(type: .Water, atackType: .Water)
    }

    override func tearDown() {
        super.tearDown()
        squirtle = nil
        charmander = nil
        psyduck = nil
    }

    func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {
        //1. Have a squirtle attack charmander
        squirtle.attack(enemy: charmander)
        
        squirtle.attack(enemy: psyduck)
        
        //Test it
    XCTAssertTrue(charmander.health < psyduck.health)
    }
    
    func testThatAFirePokemonDoesLessDamageToAWaterPokemon() {
        charmander.attack(enemy: squirtle)
        charmander.attack(enemy: charmander)
        XCTAssertTrue(squirtle.health < charmander.health)
    }

    func testTypeAndAttackAreTheSameEllementDamageIsNull() {
        charmander.attack(enemy: charmander)
        XCTAssertTrue(charmander.health == 100, "Tomou HiT")
    }
    
}
