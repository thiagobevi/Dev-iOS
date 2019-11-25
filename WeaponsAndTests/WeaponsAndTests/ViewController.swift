//
//  ViewController.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/13/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class WeaponsListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

struct longSword: Weapon, Cutable {
    var name: String
    var weight: Double
    var steel: String
}

extension Weapon {
    var canFire: Bool { return self is Fireable}
    var canCut: Bool {return self is Cutable}
}
