//
//  ViewController.swift
//  ToDo_RAY
//
//  Created by Thiago Bevilacqua on 7/30/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    var toDo : TodoList
    required init?(coder aDecoder: NSCoder) {
       
        toDo = TodoList()
        super.init(coder: aDecoder)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func AddItem(_ sender: Any) {
        let newIndexRow = toDo.toDos.count
        _ = toDo.newTodo()
        
        let indexPath = IndexPath(row: newIndexRow, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDo.toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseCell = tableView.dequeueReusableCell(withIdentifier: "RestoreCell", for: indexPath)
        let position = indexPath.row
        
        if let label = reuseCell.viewWithTag(1000) as? UILabel {
           label.text = toDo.toDos[position].text
            
        }
        
        reuseCell.accessoryType = .checkmark
        
        

        return reuseCell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       
        toDo.toDos.remove(at: indexPath.row)
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
        configureCheckmark(for: cell, at: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureCheckmark(for cell: UITableViewCell, at position: Int) {
        let isChecked = toDo.toDos[position].checked
        if isChecked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
        toDo.toDos[position].checked = !toDo.toDos[position].checked
    }
}

    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddItemSegue" {
            if let addItemViewController = segue.destination as? AddTableViewController{
                addItemViewController.delegate = self
            }
            
        }
}
extension ChecklistViewController: AddItemViewControllerDelegate {
 
    
    func addItemViewControllerDidCancel(controller: AddTableViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    func addItemViewController(controller: AddTableViewController, didFinishAdding item: CheckItemFile) {
        navigationController?.popViewController(animated: true)
    }
    
    
}
