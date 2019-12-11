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
    let newHeroe = Character()
    var idChar: String!
    var nameChar: String!
    var descriptionChar: String!
    var loadedHeroe = Character()
    
    @IBOutlet weak var idResultLabel: UILabel!
    @IBOutlet weak var nameResultLabel: UILabel!
 
    @IBOutlet weak var descriptionResultLabel: UILabel!
    
    @IBAction func cancelButton(_ sender: Any) {
      navigationController?.popViewController(animated: true)
        print("cancel")
    }
    
    fileprivate func saveHeroFavorite() {
        do  {
            try self.realm.write {
                
                newHeroe.id = idResultLabel.text!
                newHeroe.name = nameResultLabel.text!
                newHeroe.descriptions = descriptionResultLabel.text!
                newHeroe.favorite = true
                
                realm.add(newHeroe, update: .modified)
            }
        } catch {
            print("Error saving new favorite")
        }
    }
    
    @IBAction func addFavorites(_ sender: Any) {
        
        saveHeroFavorite()
    }

    override func viewDidLoad() {
        idResultLabel.text = idChar
        nameResultLabel.text = nameChar
        descriptionResultLabel.text = descriptionChar
    }
    
    func loadHeroesDetails() {
        idChar = loadedHeroe.id
        nameChar = loadedHeroe.name
        descriptionChar = loadedHeroe.descriptions
        self.navigationItem.rightBarButtonItem = nil
        
    }

    
}
