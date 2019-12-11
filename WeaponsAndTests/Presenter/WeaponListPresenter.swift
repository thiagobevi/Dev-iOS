//
//  WeaponListPresenter.swift
//  WeaponsAndTestsTests
//
//  Created by Thiago Bevilacqua on 12/5/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation

class WeaponListPresenter {
    var weaponView: WeaponsListView?
    init () {}
    
    func atachView(view: WeaponsListView) {
        weaponView = view
    }
    
    func detachView() {
        weaponView = nil
    }
}
