//
//  Character.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 10/24/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation
import RealmSwift

//class Character: Object {
//
//    @objc dynamic var id = ""
//    @objc dynamic var name = ""
//    @objc dynamic var descriptions = ""
//    @objc dynamic var favorite = false
//
//    override static func primaryKey() -> String? {
//        return "id"
//
//    }
//}

struct CharacterResponse: Codable {
    let data: CharacterData
}

struct CharacterData: Codable {
   var results: [Character]
    
    enum CodingKeys: String, CodingKey {
        case results = "results"
    }
    


}

struct Character: Codable {
    let id: Int
    let name: String
    let description: String
    let imageURLPath: URL?
    let imageExtension: String?
}
