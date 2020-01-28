//
//  SearchHeroService.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 12/11/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation
import Alamofire

protocol SearchHeroServiceProtocol {
    
    func getMarvelHeroesData(name: String, completion: @escaping (CharacterResponse?, MarvelError?) -> ())
}

class SearchHeroService: SearchHeroServiceProtocol {
    
    let MARVEL_URL = "https://gateway.marvel.com/v1/public/characters?apikey=2167a92e8dbf3b977126ee8ee3f8f785&hash=490023e02a77e615cf806c552c5b6412&ts=1&name="
    
    func getMarvelHeroesData(name: String, completion: @escaping (CharacterResponse?, MarvelError?) -> ()) {
        let url = MARVEL_URL + name
        let request = Alamofire.request(url, method: .get)
        request.responseJSON { response in
            if response.result.isSuccess {
                print("Success, got Marvel data")
                
                do {
                    let decoded = try JSONDecoder().decode(CharacterResponse.self, from: response.data!)
                    completion(decoded, nil)
                } catch {
                    print(error)
                }
            } else {
                completion(nil, MarvelError(error: response.error?.localizedDescription ?? "unknown error"))
            }
        }
    }
}
