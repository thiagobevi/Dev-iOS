//
//  ViewController.swift
//  DelegateEProtocols
//
//  Created by Thiago Bevilacqua on 9/20/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, retornarTextoDelegate {
   
    @IBAction func proximaTela(_ sender: Any) {
    }
    
    @IBOutlet weak var labelRetornoTexto: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondVC = segue.destination as! SecondViewController
        secondVC.delegate = self
    }
    
    func retornarTextoFunc(textLabel: String) {
       labelRetornoTexto.text = textLabel
    }
    
    

}

