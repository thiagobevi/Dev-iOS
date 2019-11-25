//
//  ViewController.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/13/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit
import Foundation
class WeaponsListViewController: UITableViewController {
    
    var getIndexPathRow = 0
    var getIndexPathSection = 0
    
    var weapons: [Weapon] = []
    var sectionTitles = [String]()
    var weaponsDictionary: [String: [Weapon]] = [:]
    
    var longSword = Weapon(baseDamage: 70, damageType: .slash, hitRate: 90, atackSpeed: 80, name: "LongSword", weaponType: .sword)
    var goldSword = Weapon(baseDamage: 80, damageType: .slash, hitRate: 92, atackSpeed: 85, name: "GoldSword", weaponType: .sword)
    var iceSword = Weapon(baseDamage: 60, damageType: .slash, hitRate: 80, atackSpeed: 70, name: "IceSword", weaponType: .sword)
    var bigAxe = Weapon(baseDamage: 95, damageType: .blunt, hitRate: 85, atackSpeed: 70, name: "BigAxe", weaponType: .axe)
    var ironAxe = Weapon(baseDamage: 60, damageType: .blunt, hitRate: 90, atackSpeed: 50, name: "IronAxe", weaponType: .axe)
    var ironSpear = Weapon(baseDamage: 74, damageType: .pierce, hitRate: 99, atackSpeed: 99, name: "IronSpear", weaponType: .spear)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        weaponsDictionary["Sword"] = [longSword, goldSword, iceSword]
        weaponsDictionary["Axe"] = [bigAxe, ironAxe]
        weaponsDictionary["Spear"] = [ironSpear]
        
        let result  = weaponsDictionary.keys.sorted()
        print(weaponsDictionary.keys.sorted())
        print(result)
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return weaponsDictionary.keys.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let key = weaponsDictionary.keys.sorted()[section]
        let rows = weaponsDictionary[key]
        
        return rows?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell", for: indexPath)
        
        let key = weaponsDictionary.keys.sorted()[indexPath.section] // pegamos apenas o nome da chave usando a section
        guard let listOfWeapons = weaponsDictionary[key] else { return cell } // pegamos os weapons destinados apenas para o weapon da section
        
        let weapon = listOfWeapons[indexPath.row] // obtendo cada weapon da lista de weapons do dicionario
        
        cell.textLabel?.text = weapon.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        getIndexPathRow = indexPath.row
        getIndexPathSection = indexPath.section
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let name = weaponsDictionary.keys.sorted()[section]
        return name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! WeaponDetailViewController
        var key = weaponsDictionary.keys.sorted()[getIndexPathSection]
        let listOfWeapons = weaponsDictionary[key]
        var weapon = listOfWeapons?[getIndexPathRow]
        
        secondVC.nameWeapon = weapon?.name
        secondVC.damageWeapon = weapon?.baseDamage
        

    
    }
        

}



