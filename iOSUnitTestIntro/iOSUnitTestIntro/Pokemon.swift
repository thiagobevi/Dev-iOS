//
//  Pokemon.swift
//  iOSUnitTestIntro
//
//  Created by Thiago Bevilacqua on 11/12/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation

class Pokemon {
    var type: PokemonType
    var atackType: PokemonAtackType
    var health: Int = 100
    
    
    init(type: PokemonType, atackType: PokemonAtackType) {
        self.type = type
        self.atackType = atackType
    }
    
    func attack(enemy: Pokemon) {
        var damage = 30
        
        if enemy.type == .Fire && atackType == .Water {
            damage = damage * 2
        }
        
        if enemy.type == .Water && atackType == .Fire {
            damage = damage / 2
        }
        
	        if enemy.type == .Fire && atackType == .Fire {
            damage = 0
            print("Ataque do mesmo tipo não funciona")
        }
        
        enemy.health = enemy.health-damage
    }
    
}

enum PokemonType {
    case Neutral
    case Fire
    case Water
}

enum PokemonAtackType {
    case Normal
    case Fire
    case Water
}
