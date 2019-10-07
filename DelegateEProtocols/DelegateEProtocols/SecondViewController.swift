//
//  SecondViewController.swift
//  DelegateEProtocols
//
//  Created by Thiago Bevilacqua on 9/20/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation
import UIKit

protocol retornarTextoDelegate{
    func retornarTextoFunc(textLabel: String)
    
}

class SecondViewController: UIViewController {
 
    var delegate : retornarTextoDelegate?
    
    @IBOutlet weak var receberTexto: UITextField!
    
    @IBAction func retornarTexto(_ sender: Any) {
        delegate?.retornarTextoFunc(textLabel: receberTexto.text!)
        
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
    
}
