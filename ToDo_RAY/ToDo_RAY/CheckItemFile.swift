//
//  CheckItemFile.swift
//  ToDo_RAY
//
//  Created by Thiago Bevilacqua on 7/31/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation

class CheckItemFile {
    
    var text = ""
    var checked = true
    
    func toogleItem() {
        checked = !checked
    }
    
     func randomToDo() -> String {
        var textToDo = ["aleatorio0", "aleatorio1", "aleatorio2", "aleatorio13", "aleatorio4"] 
        let randomNumber = Int.random(in: 0 ... textToDo.count-1)
        return textToDo[randomNumber]
    }
    
}
