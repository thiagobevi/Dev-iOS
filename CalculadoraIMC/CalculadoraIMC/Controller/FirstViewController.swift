//
//  FirstViewController.swift
//  CalculadoraIMC
//
//  Created by Thiago Bevilacqua on 11/7/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var valorAlturaLabel: UILabel!
    @IBOutlet weak var valorPesoLabel: UILabel!
    var peso: Float = 0
    var altura: Float = 0
    var imc: Float = 0
    
    @IBAction func alturaSlider(_ sender: UISlider) {
        valorAlturaLabel.text = String(format: "%.2f", sender.value)
        altura = sender.value
    }
    
    @IBAction func pesoSlider(_ sender: UISlider) {
        valorPesoLabel.text = String(format: "%.2f", sender.value)
        peso = sender.value
    }
    
    @IBAction func calcularButton(_ sender: Any) {
        calcularIMC()
        performSegue(withIdentifier: "resultVC", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func calcularIMC() {
        imc = peso/(altura * altura)
        print(imc)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultVC" {
            if let secondVC = segue.destination as? ResultViewController {
                secondVC.resultadoIMC = imc
            }
        }
    }

}

