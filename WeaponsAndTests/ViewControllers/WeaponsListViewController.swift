//
//  ViewController.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/13/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit
import Foundation
class WeaponsListViewController: UIViewController {
    
    var weaponsSelected: [Weapon] = []
    var weaponsDictionary: [String: [Weapon]] = [:]
    var presenter = WeaponListPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        let weapons = WeaponsCollection()
        self.navigationItem.rightBarButtonItem?.isEnabled = false;
        weaponsDictionary["Sword"] = weapons.sword()
        weaponsDictionary["Axe"] = weapons.axe()
        weaponsDictionary["Spear"] = weapons.spear()
    }
}
    extension WeaponsListViewController: UITableViewDelegate, UITableViewDataSource {
    
        @IBAction func compararButton(_ sender: UIBarButtonItem) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            print(weaponsSelected)
            
            vc.nameWeapon1 = weaponsSelected[0].name
            vc.atkSpdWeapon1 = weaponsSelected[0].atackSpeed
            vc.damageWeapon1 = weaponsSelected[0].baseDamage
            vc.hitRateWeapon1 = weaponsSelected[0].hitRate
            
            vc.nameWeapon2 = weaponsSelected[1].name
            vc.atkSpdWeapon2 = weaponsSelected[1].atackSpeed
            vc.damageWeapon2 = weaponsSelected[1].baseDamage
            vc.hitRateWeapon2 = weaponsSelected[1].hitRate
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return weaponsDictionary.keys.count
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            let key = weaponsDictionary.keys.sorted()[section]
            let rows = weaponsDictionary[key]
            tableView.allowsMultipleSelection = true
            return rows?.count ?? 0
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell", for: indexPath)
            
            let key = weaponsDictionary.keys.sorted()[indexPath.section] // pegamos apenas o nome da chave usando a section
            guard let listOfWeapons = weaponsDictionary[key] else { return cell } // pegamos os weapons destinados apenas para o weapon da section
            let weapon = listOfWeapons[indexPath.row] // obtendo cada weapon da lista de weapons do dicionario
            
            cell.textLabel?.text = weapon.name
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            let weapon = currentWeapon(indexPath)
            weaponsSelected.append(weapon!)
            
            if weaponsSelected.count == 2 {
                self.navigationItem.rightBarButtonItem?.isEnabled = true;
            }
        }
        
        func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
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
        
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            let name = weaponsDictionary.keys.sorted()[section]
            return name
        }
        
        private func currentWeapon(_ indexPath: IndexPath) -> Weapon? {
            let key = weaponsDictionary.keys.sorted()[indexPath.section]
            let listOfWeapons = weaponsDictionary[key]
            return listOfWeapons?[indexPath.row]
        }
}





