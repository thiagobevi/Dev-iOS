//
//  WeaponDetailViewController.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/26/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation
import UIKit

class WeaponDetailViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var cellLabel: UILabel!
    
    var weaponsSended: [Weapon] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return weaponsSended.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cellLabel.text = weaponsSended[0]
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
