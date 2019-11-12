//
//  ResultViewController.swift
//  CalculadoraIMC
//
//  Created by Thiago Bevilacqua on 11/7/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit
import RealmSwift

class ResultViewController: UIViewController {
   
    let realm = try! Realm()
    var resultadoIMC: Float = 0
    var newIMC = IMCModel()
    
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var faixaIMCLabel: UILabel!
    @IBOutlet weak var recomendacaoLabel: UILabel!
    
    @IBAction func salvarIMCButton(_ sender: Any) {
        do {
            try self.realm.write {
                newIMC.totalIMC = resultadoIMC
                realm.add(newIMC)
                
            }
        } catch {
            print("Erro ao salvar IMC")
        }
        
    }
    
    
    
    override func viewDidLoad() {
       resultadoLabel.text = String(resultadoIMC)
        
        switch resultadoIMC {
        case 0...18,5 :
            faixaIMCLabel.text = "Baixo Peso"
            recomendacaoLabel.text = "Come mais po"
        case 18,6...24,9 :
            faixaIMCLabel.text = "Normal"
            recomendacaoLabel.text = "Tais de boa, só manter"
        case 25...30 :
            faixaIMCLabel.text = "Sobrepeso"
            recomendacaoLabel.text = "Da uma moderada nas besteiras e fechou"
        case 30... :
            faixaIMCLabel.text = "Obesidade"
            recomendacaoLabel.text = "Procure um médico"
        
        default:
            print("Não existe")
        }
    }
}
