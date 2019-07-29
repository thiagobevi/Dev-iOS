//
//  Filme.swift
//  Filmes
//
//  Created by Thiago Bevilacqua on 7/26/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation
import UIKit

struct Filme {
    var titulo : String!
    var descricao : String!
    var imagem : UIImage!
    
    init(titulo : String, descricao : String, imagem : UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem =  imagem
        
    }
}

