//
//  ViewController.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 10/11/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import SwiftyJSON
import Alamofire
import UIKit

class ViewController: UIViewController {

    //Constants
    let MARVEL_URL = "https://gateway.marvel.com/v1/public/characters?apikey=2167a92e8dbf3b977126ee8ee3f8f785&hash=490023e02a77e615cf806c552c5b6412&ts=1"
    
    var heroCharacter = Character(id: "", name: "", description: "")
    
    // MARK: Outlets
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBAction func searchHeroesButton(_ sender: Any) {
     let heroURL = MARVEL_URL + "&name=" + searchTextField.text!
         getMarvelHeroesData(url: heroURL, parameters: [ : ])
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    // MARK: Networking
    func getMarvelHeroesData(url: String, parameters: [String : String]) {
        let request = Alamofire.request(url, method: .get, parameters: parameters)
        request.responseJSON { response in
            if response.result.isSuccess {
                print("Success, got Marvel data")
                
                let marvelJson : JSON = JSON(response.result.value!)
                
                
                self.updateMarvelData(json: marvelJson)
                self.performSegue(withIdentifier: "secondVC", sender: nil)
            } else {
                print("Failure to get Marvel data")
                
            }
        }
        
    }
    
    
    // Parsing

    func updateMarvelData(json : JSON)  {
        let resultMarvel = json["data"]["results"].arrayValue
        for a in resultMarvel {
            let id = a["id"].stringValue
            let name = a["name"].stringValue
            let description = a["description"].stringValue

            self.heroCharacter = Character(id: id, name: name, description: description)
            print(heroCharacter)
        }

    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC" {
            let destinationVC = segue.destination as? HeroesDetails2
            destinationVC?.idChar = self.heroCharacter.id
            destinationVC?.nameChar = self.heroCharacter.name
            destinationVC?.descriptionChar = self.heroCharacter.description
            
        }
    }
   
 
}



