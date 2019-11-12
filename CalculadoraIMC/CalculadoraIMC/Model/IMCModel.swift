//
//  IMCModel.swift
//  CalculadoraIMC
//
//  Created by Thiago Bevilacqua on 11/7/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation
import RealmSwift

class IMCModel: Object {
    
    @objc dynamic var peso: Float = 0
    @objc dynamic var altura: Float = 0
    @objc dynamic var totalIMC: Float = 0
    
}
