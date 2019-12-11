//
//  CollectionViewCell.swift
//  WeaponsAndTests
//
//  Created by Thiago Bevilacqua on 11/28/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class CellStyle: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    public func configure(with model: CellModel) {
        
    }
}

struct CellModel {
    let name: String
    
}
