//
//  ViewController.swift
//  App_lista_estatica
//
//  Created by Thiago Bevilacqua on 7/25/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var dados : [String] = ["Lasanha", "Pipoca", "Pizza"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let celulaReuso  = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso)
        celula?.textLabel?.text = dados[indexPath.row]
        
        return celula!
        
    }
    
    
}

