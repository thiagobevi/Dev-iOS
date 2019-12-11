//
//  Calculadora.swift
//  CalculadoraHoras
//
//  Created by Thiago Bevilacqua on 11/27/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation

class Calculadora {
    
    func calcularHorasImputadas(arrayHorasDia: [Double]) -> Double {
            var resulHoraasDia = (arrayHorasDia[1] - arrayHorasDia[0]) + (arrayHorasDia[3] - arrayHorasDia[2])
            return resulHoraasDia
    }
    
    func compararHorasTrabalhadasDia(horaImputada: Double) -> Double  {
       
        return horaImputada - 8
    }
    
    func somarBancoSemanal(arrayHorasDiff: [Double]) -> Double {
       var sum = 0.0
        
        for i in 0..<arrayHorasDiff.count {
            sum += arrayHorasDiff[i]
            print(arrayHorasDiff[i])
        }
        return sum
    }
    
    
    

}
