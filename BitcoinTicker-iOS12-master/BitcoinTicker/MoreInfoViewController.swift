//
//  MoreInfoViewController.swift
//  BitcoinTicker
//
//  Created by Thiago Bevilacqua on 10/4/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation
import UIKit

class MoreInfoViewController: ViewController {
    
    @IBAction func okButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var btcCodeLabel: UILabel!
    @IBOutlet weak var highLabel: UILabel!
    @IBOutlet weak var lowLabel: UILabel!
    
    
}
