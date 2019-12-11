//
//  HeroView.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 12/9/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation

protocol SearchHeroView {
   
    func searchHero(_ hero: String)
    func showDetails(idChar: String, nameChar: String, descriptionChar: String)
}
