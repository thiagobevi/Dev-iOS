//
//  FavoritesTableViewController.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 10/25/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit
import RealmSwift

class FavoritesTableViewController: UITableViewController {
    let realm = try! Realm()
    
    var heroes: Results<Character>!
    var heroeTable: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFavoritesHeroes()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes?.count ?? 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuse") else {
            fatalError("Nao existe a cell")
        }
       
        if let heroe = heroes?[indexPath.row] {
            cell.textLabel?.text = heroe.name
        } else {
            cell.textLabel?.text = "No heroes add"
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
       
        heroeTable = heroes?[indexPath.row]
        
        performSegue(withIdentifier: "heroeDetailSegue", sender: self)
        print(heroeTable)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let destinationVC = segue.destination as! HeroesDetails2
        destinationVC.loadedHeroe = heroeTable
        destinationVC.loadHeroesDetails()
        
    }
    
    func loadFavoritesHeroes() {
        heroes = realm.objects(Character.self)
        tableView.reloadData()
    }
    
}


