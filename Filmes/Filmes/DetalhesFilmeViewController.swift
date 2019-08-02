//
//  DetalhesFilmeViewController.swift
//  Filmes
//
//  Created by Thiago Bevilacqua on 7/29/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation
import UIKit

class DetalhesFilmeVewController: UIViewController {
    
    var filme: Filme!
    
    @IBOutlet weak var FilmeImageView: UIImageView!
    @IBOutlet weak var tituloDetalhes: UILabel!
    @IBOutlet weak var descricaoDetalhes: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FilmeImageView.image = filme.imagem
        tituloDetalhes.text = filme.titulo
        descricaoDetalhes.text = filme.descricao
        
    }
}
