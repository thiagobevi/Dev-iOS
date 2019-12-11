//
//  SearchHeroPresenter.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 12/9/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import SwiftyJSON
import Alamofire
import UIKit
import RealmSwift

class SearchHeroPresenter {
    
    let MARVEL_URL = "https://gateway.marvel.com/v1/public/characters?apikey=2167a92e8dbf3b977126ee8ee3f8f785&hash=490023e02a77e615cf806c552c5b6412&ts=1&name="
    var heroCharacter = Character()
    private var heroView: SearchHeroView?
    init() {}
    
    func attachView(view: SearchHeroView) {
        heroView = view
    }
    
    func detachView() {
        heroView = nil
    }
    
    func getURLHero(name: String) -> String {
         let heroURL = MARVEL_URL + name
        return heroURL
    }
    
    func getMarvelHeroesData(name: String, parameters: [String : String]) {
        let url = getURLHero(name: name)
        let request = Alamofire.request(url, method: .get, parameters: parameters)
        request.responseJSON { response in
            if response.result.isSuccess {
                print("Success, got Marvel data")
                
                let marvelJson : JSON = JSON(response.result.value!)
                self.updateMarvelData(json: marvelJson)
            } else {
                print("Failure to get Marvel data")
                
            }
        }
    }
    
    func updateMarvelData(json : JSON)  {
        let resultMarvel = json["data"]["results"].arrayValue
        for a in resultMarvel {
            let id = a["id"].stringValue
            let name = a["name"].stringValue
            let description = a["description"].stringValue
            
            heroCharacter.id = id
            heroCharacter.name = name
            heroCharacter.descriptions = description
            
            print(heroCharacter)
        }
        
        heroView?.showDetails(idChar: heroCharacter.id, nameChar: heroCharacter.name, descriptionChar: heroCharacter.descriptions)
    }
    
    
}
