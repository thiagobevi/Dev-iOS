//
//  Character.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 10/11/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation

struct Character {
    
    let id : String
    let name : String
    let description : String
    
    init(id: String, name: String, description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
}
