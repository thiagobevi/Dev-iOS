//
//  HeroesDetails.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 10/11/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class HeroesDetails: UIViewController {
    
    @IBOutlet weak var idResultLabel: UILabel!
    @IBOutlet weak var nameResultLabel: UILabel!
    @IBOutlet weak var descriptionResultLabel: UILabel!
   
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
