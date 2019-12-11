//
//  CalculadoraHorasTests.swift
//  CalculadoraHorasTests
//
//  Created by Thiago Bevilacqua on 11/27/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import XCTest
@testable import CalculadoraHoras

class CalculadoraHorasTests: XCTestCase {

    var horasImputadas: Double!
    var vc = Calculadora()
    var resultHora: Double!
    var HorasBancoArraySemana = [Double]()
    
    override func setUp() {
       
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCalcularHorasImputadas() {
        //Given
        let arrayPontosDia = [8.0, 12.0, 13.0, 17.0]
       
        //When
        let resulHoraPontoDia = vc.calcularHorasImputadas(arrayHorasDia: arrayPontosDia)
        
        //Then
        XCTAssert(resulHoraPontoDia == 8, "Deveria ser 8 horas exatas")
    }
    
    func testCompararHorasSaldoPositivo() {
        //given
        horasImputadas = 9
       
        //when
       resultHora = vc.compararHorasTrabalhadasDia(horaImputada: horasImputadas)
        
        //then
        XCTAssertTrue(resultHora > 0, "horas deveriam ser positivas")
    }

    func testCompararHorasSaldoNegativo() {
        //given
        horasImputadas = 7
        
        //when
        resultHora = vc.compararHorasTrabalhadasDia(horaImputada: horasImputadas)
        
        //then
        XCTAssertTrue(resultHora < 0, "Horas deveriam ser negativas")
    }
    
    func testComparaHorasSaldo0() {
        //given
        horasImputadas = 8
        
        //when
        resultHora = vc.compararHorasTrabalhadasDia(horaImputada: horasImputadas)
        
        //then
        XCTAssertTrue(resultHora == 0, "Horas saldo deve ser exatamente 0")
    }
    
    func testBancoHorasSemana() {
        //given
        HorasBancoArraySemana = [-1.0, 2.0, 1.0, 1.0, 0.5]
        
        //when
        let reesultBanco = vc.somarBancoSemanal(arrayHorasDiff: HorasBancoArraySemana)
        
        //then
        XCTAssertEqual(reesultBanco, 3.5)
    }

}
