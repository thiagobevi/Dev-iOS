//
//  WeaponsListView.swift
//  WeaponsAndTestsTests
//
//  Created by Thiago Bevilacqua on 12/5/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation
protocol WeaponsListView {
    func addWeaponToList(weapon: Weapon)
    func loadWeaponsList()
}
