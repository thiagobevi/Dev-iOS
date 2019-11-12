//
//  SecondViewController.swift
//  CalculadoraIMC
//
//  Created by Thiago Bevilacqua on 11/7/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell") else {
            fatalError("Não existe essa célula")
        }
        //cell.textLabel?.text = IMCModel
        return cell
    }
}

