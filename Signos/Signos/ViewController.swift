//
//  ViewController.swift
//  Signos
//
//  Created by Thiago Bevilacqua on 7/26/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let signosArray : [String] = ["Aquário", "Áries", "Câncer", "Capricórnio", "Escorpião","Gêmeos", "Leão", "Libra", "Peixes", "Sagitário", "Touro", "Virgem"]
    
    let textoSignosArray : [String] = [
        "Gosta de Água",
        "Satanaries",
        "Doença",
        "Bicho com chifre",
        "Veneno",
        "Bipolar",
        "Exibido",
        "Equilibrado",
        "Viajão",
        "Ngm sabe",
        "Fome",
        "Virgem"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return signosArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let defaultCell  = "defaultCell"
        let celula = tableView.dequeueReusableCell(withIdentifier: defaultCell)
        celula?.textLabel?.text = signosArray[indexPath.row]
        
        
        
        return celula!
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
       
        let alertaControler = UIAlertController(title: "Significado dos signos", message: textoSignosArray[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar =  UIAlertAction(title: "Massa", style: .default, handler: nil)
        
        alertaControler.addAction(acaoConfirmar)
        
        present(alertaControler, animated: true, completion: nil)
    

    }

}
