import UIKit

class ToDoListViewController: UITableViewController {

    var itemArray = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newItem = Item()
        newItem.title = "Tarefa 1"
        itemArray.append(newItem)
        
        let newItem2 = Item()
        newItem2.title = "Tarefa 2"
        itemArray.append(newItem2)
        
        let newItem3 = Item()
        newItem3.title = "Tarefa 3"
        itemArray.append(newItem3)
        
    }

    // MARK - Tabelview Datasource Methods
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRow = itemArray.count
        return numberOfRow
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
     let cell =  tableView.dequeueReusableCell(withIdentifier: "ToDoReuseCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row].title
        
        return cell
    }
    
    // MARK - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
            }else {
                cell.accessoryType = .checkmark
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
    }
    
    // MARK - Add new Items
    
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add new Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in

            let newItem = Item()
            newItem.title = textField.text!

            self.itemArray.append(newItem)
            
            self.tableView.reloadData()
        }
            
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new Item"
            textField = alertTextField
            
            }
        
    
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}


