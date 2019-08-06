//
//  AddTableViewController.swift
//  ToDo_RAY
//
//  Created by Thiago Bevilacqua on 8/2/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate: class {

    func addItemViewControllerDidCancel( controller: AddTableViewController)
    func addItemViewController( controller:  AddTableViewController, didFinishAdding item: CheckItemFile)
}

class AddTableViewController: UITableViewController {
    
    weak var delegate: AddItemViewControllerDelegate?

    @IBOutlet weak var addBarButton: UIBarButtonItem!
  
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    
    @IBAction func cancel(_ sender: Any) {
       navigationController?.popViewController(animated: true)
        delegate?.addItemViewControllerDidCancel(controller: self)
        
    }
    
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        let item = CheckItemFile()
        if let textFieldText = textField.text {
            item.text = textFieldText
        }
        item.checked = false
        delegate?.addItemViewController(controller: self, didFinishAdding: item)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        textField.delegate = self

        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }

    @IBOutlet weak var textField: UITextField!
    
    
    
    
}

extension AddTableViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard let oldText = textField.text,
        let stringRange = Range(range, in: oldText) else {
            return false
        }
        
        let newText = oldText.replacingCharacters(in: stringRange, with: string)
        if newText.isEmpty {
            addBarButton.isEnabled = false
        }else {
            addBarButton.isEnabled = true
        }
        return true
    }
}
