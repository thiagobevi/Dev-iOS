//
//  SearchHeroPresenter.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 12/9/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//


import Alamofire
import UIKit
import RealmSwift

protocol SearchHeroPresentable {
    func searchByHero(name: String)
}

class SearchHeroPresenter: SearchHeroPresentable {
   
    private var heroView: SearchHeroView?
    private let service: SearchHeroServiceProtocol
    
    init(service: SearchHeroServiceProtocol) {
        self.service = service
    }
    
    func attachView(view: SearchHeroView) {
        heroView = view
    }
    
    func searchByHero(name: String) {
        service.getMarvelHeroesData(name: name) { [weak self] result, error in
            guard let result = result else {
                self?.heroView?.showError(error: error?.error ?? "Unknown Error")
                return
            }
            
            self?.heroView?.showDetails(hero: result.data.results.first!)
        }
    }
    
    
}
