//
//  UIView+Ext.swift
//  TMBDViewCode
//
//  Created by Thiago Bevilacqua on 1/23/20.
//  Copyright © 2020 Thiago Bevilacqua. All rights reserved.
//

import UIKit

extension UIView {
    
    func pin (to superView: UIView)  {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo:  superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        
        
    }
}
