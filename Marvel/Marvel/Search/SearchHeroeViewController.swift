//
//  ViewController.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 10/11/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class SearchHeroViewController: UIViewController {

    //Constants
    var presenter = SearchHeroPresenter()
    
    // MARK: Outlets
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBAction func searchHeroesButton(_ sender: Any) {
        searchHero(searchTextField.text ?? "Digite nome heroi")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
    }
}

extension SearchHeroViewController: SearchHeroView {
 
    func searchHero(_ hero: String) {
        presenter.getMarvelHeroesData(name: hero, parameters: [ : ])
    }
    
    func showDetails(idChar: String, nameChar: String, descriptionChar: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HeroesDetails2") as! HeroesDetails2
        
        vc.idChar = idChar
        vc.nameChar = nameChar
        vc.descriptionChar = descriptionChar
        
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

