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
    
    var weaponsSelected: [Weapon] = []
    var weaponsDictionary: [String: [Weapon]] = [:]
    
    var longSword = Weapon(baseDamage: 70, damageType: .slash, hitRate: 90, atackSpeed: 80, name: "LongSword", weaponType: .sword)
    var goldSword = Weapon(baseDamage: 80, damageType: .slash, hitRate: 92, atackSpeed: 85, name: "GoldSword", weaponType: .sword)
    var iceSword = Weapon(baseDamage: 60, damageType: .slash, hitRate: 80, atackSpeed: 70, name: "IceSword", weaponType: .sword)
    var bigAxe = Weapon(baseDamage: 95, damageType: .blunt, hitRate: 85, atackSpeed: 70, name: "BigAxe", weaponType: .axe)
    var ironAxe = Weapon(baseDamage: 60, damageType: .blunt, hitRate: 90, atackSpeed: 50, name: "IronAxe", weaponType: .axe)
    var ironSpear = Weapon(baseDamage: 74, damageType: .pierce, hitRate: 99, atackSpeed: 99, name: "IronSpear", weaponType: .spear)
    

    @IBAction func compararButton(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "WeaponDetailViewController") as! WeaponDetailViewController
        
        vc.weaponsSended.append(weaponsSelected[getIndexPathRow])
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.allowsMultipleSelection = true
        
        weaponsDictionary["Sword"] = [longSword, goldSword, iceSword]
        weaponsDictionary["Axe"] = [bigAxe, ironAxe]
        weaponsDictionary["Spear"] = [ironSpear]
        
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
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        let weapon = currentWeapon(indexPath)
        weaponsSelected.append(weapon!)
    }
    
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        getIndexPathRow = indexPath.row
        getIndexPathSection = indexPath.section
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        let weapon = currentWeapon(indexPath)
        
        var currentIndex = -1
        
        for (index, element) in weaponsSelected.enumerated() {
            if element == weapon! {
                currentIndex = index
                break
            }
        }
        
        weaponsSelected.remove(at: currentIndex)
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let name = weaponsDictionary.keys.sorted()[section]
        return name
    }
    
    private func currentWeapon(_ indexPath: IndexPath) -> Weapon? {
        let key = weaponsDictionary.keys.sorted()[getIndexPathSection]
        let listOfWeapons = weaponsDictionary[key]
        return listOfWeapons?[getIndexPathRow]
    }
        

}



