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
    var presenter = SearchHeroPresenter(service: SearchHeroService())
    
    // MARK: Outlets
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBAction func searchHeroesButton(_ sender: Any) {
       presenter.searchByHero(name: searchTextField.text ?? "")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
    }
}

extension SearchHeroViewController: SearchHeroView {
 
    func showDetails(hero: Character) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HeroesDetails2") as! HeroesDetails2
        vc.hero = hero
        print(hero)

        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showError(error: String) {
        print(error)
    }

}

