//
//  ViewController.swift
//  CalculadoraHoras
//
//  Created by Thiago Bevilacqua on 11/27/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculadora = Calculadora()
    var bancoHorasSemana = [Double]()
    var arrayHorasDia = [Double]()
    
    @IBOutlet weak var campoPonto: UITextField!
    
    @IBOutlet weak var ponto1Label: UILabel!
    @IBOutlet weak var ponto2Label: UILabel!
    @IBOutlet weak var ponto3Label: UILabel!
    @IBOutlet weak var ponto4Label: UILabel!
    @IBOutlet weak var horasDiaLabel: UILabel!
    
    @IBAction func incluirBotao(_ sender: Any) {
        let horaImputada: Double? = Double(campoPonto.text!)
        arrayHorasDia.append(horaImputada ?? 0.0)
  
        }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var result = calculadora.somarBancoSemanal(arrayHorasDiff: bancoHorasSemana)
        print(result)
        // Do any additional setup after loading the view.
    }


   
    
}

