//
//  HeroesDetails2.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 10/24/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//
import UIKit
import RealmSwift

class HeroesDetails2: UIViewController {
    
    let realm = try! Realm()
    var hero: Character!
    
    @IBOutlet weak var idResultLabel: UILabel!
    @IBOutlet weak var nameResultLabel: UILabel!
 
    @IBOutlet weak var descriptionResultLabel: UILabel!
    
    @IBAction func cancelButton(_ sender: Any) {
      navigationController?.popViewController(animated: true)
        print("cancel")
    }
    
//    fileprivate func saveHeroFavorite() {
//        do  {
//            try self.realm.write {
//
//                hero.id = idResultLabel.text
//                hero.name = nameResultLabel.text
//                newHeroe.descriptions = descriptionResultLabel.text!
//                newHeroe.favorite = true
//
//                realm.add(newHeroe, update: .modified)
//            }
//        } catch {
//            print("Error saving new favorite")
//        }
//    }
    
//    @IBAction func addFavorites(_ sender: Any) {
//        
//        saveHeroFavorite()
//    }

    override func viewDidLoad() {
        idResultLabel.text = "\(hero.id)"
        nameResultLabel.text = hero.name
        descriptionResultLabel.text = hero.description
    }
    


    
}
