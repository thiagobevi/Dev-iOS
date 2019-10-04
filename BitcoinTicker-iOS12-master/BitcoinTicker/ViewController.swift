//
//  ViewController.swift
//  BitcoinTicker
//
//  Created by Angela Yu on 23/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
  
    
    
    let baseURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    let currencySymbolArray = ["$", "R$", "$", "¥", "€", "£", "$", "Rp", "₪", "₹", "¥", "$", "kr", "$", "zł", "lei", "₽", "kr", "$", "$", "R"]
   
    var finalURL = ""
    var currencySelected = ""
    var bitcoin : Bitcoin!
    
    
    // IBOutlets
    @IBOutlet weak var bitcoinPriceLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    @IBOutlet weak var averageWeekBitcoinLabel: UILabel!
    @IBOutlet weak var averageMonthBitcoinLabel: UILabel!
    
   
    @IBAction func moreInformationButton(_ sender: Any) {
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyArray.count
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       currencyPicker.delegate = self
    currencyPicker.dataSource = self
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        finalURL = baseURL + currencyArray[row]
        print(finalURL)
        currencySelected = currencySymbolArray[row]
        getBitPriceData(url: finalURL)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC" {
            if let secondVC = segue.destination as? MoreInfoViewController {
              secondVC.btcCodeLabel.text = bitcoin.displaySymbol
            }
            
            
        }
        
    }

    
    
    //MARK: - Networking
    /***************************************************************/
    
    func getBitPriceData(url: String) {
        
        Alamofire.request(url, method: .get)
            .responseJSON { response in
                if response.result.isSuccess {

                    print("Sucess! Got the BitCoin Price data")
                    let priceBitCoinJSON : JSON = JSON(response.result.value!)

                    self.bitcoin = self.convertJsonToModal(priceBitCoinJSON)
                    self.updatePriceBitCoinData(modal: self.bitcoin)

                } else {
                    print("Error: \(String(describing: response.result.error))")
                    self.bitcoinPriceLabel.text = "Connection Issues"
                }
            }

    }

    func convertJsonToModal(_ json: JSON) -> Bitcoin {
       
        let highResult = json["high"].double
        let bitCoinResult = json["ask"].double
        let averageWeekResult = json["averages"]["week"].double
        let averageMonthResult = json["averages"]["month"].double
        let displaySymbolResult = json["display_symbol"].string
        
        let lowResult = json["low"].double
        
        return Bitcoin(ask: bitCoinResult, averegeWeek: averageWeekResult, averageMonth: averageMonthResult, displaySymbol: displaySymbolResult, high: highResult, low: lowResult)
        

    }
    
    //MARK: - JSON Parsing
    /***************************************************************/
    
    func updatePriceBitCoinData(modal : Bitcoin) {
        
        bitcoinPriceLabel.text =  "\(modal.ask ?? 0)"
        averageMonthBitcoinLabel.text = "\(modal.averageMonth ?? 0)"
        averageWeekBitcoinLabel.text = "\(modal.averegeWeek ?? 0)"
        
    }
    
}

struct Bitcoin {
    let ask : Double?
    let averegeWeek : Double?
    let averageMonth : Double?
    let displaySymbol : String?
    let high : Double?
    let low : Double?
}
