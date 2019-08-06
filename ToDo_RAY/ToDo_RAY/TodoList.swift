//
//  TodoList.swift
//  ToDo_RAY
//
//  Created by Thiago Bevilacqua on 8/1/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation

class TodoList {
    
    var toDos : [CheckItemFile] = []
    
    func newTodo() -> CheckItemFile {
        let item  = CheckItemFile()
        item.text = item.randomToDo()
        toDos.append(item)
        
        return item
    }
}
