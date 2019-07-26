//
//  ViewController.swift
//  Alertas
//
//  Created by Thiago Bevilacqua on 7/26/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBAction func abrirAlerta(_ sender: Any) {
        let alerta = UIAlertController (title: "Adicionar Contato", message: "Deseja adicionar um contato?", preferredStyle: .actionSheet)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        
        alerta.addAction(confirmar)
        alerta.addAction(cancelar)
        
        
        present(alerta, animated: true)
            
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

