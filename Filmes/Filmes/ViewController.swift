//
//  ViewController.swift
//  Filmes
//
//  Created by Thiago Bevilacqua on 7/26/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmesArray : [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme : Filme
        filme = Filme(titulo: "007 - Spectro", descricao: "Descricao 1", imagem: #imageLiteral(resourceName: "filme1"))
        filmesArray.append(filme)
        
        filme = Filme(titulo: "Star Wars", descricao: "Descricao 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmesArray.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descricao 3 ", imagem: #imageLiteral(resourceName: "filme3"))
        filmesArray.append(filme)
        
        filme = Filme(titulo: "Deadpool", descricao: "Descricao 4", imagem: #imageLiteral(resourceName: "filme4"))
        filmesArray.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: "Descricao 5", imagem: #imageLiteral(resourceName: "filme5"))
        filmesArray.append(filme)
        
        filme = Filme(titulo: "A Herdeira", descricao: "Descricao 6", imagem: #imageLiteral(resourceName: "filme6"))
        filmesArray.append(filme)
        
        filme = Filme(titulo: "caçadores de emoção", descricao: "Descricao 7", imagem: #imageLiteral(resourceName: "filme7"))
        filmesArray.append(filme)
        
        filme = Filme(titulo: "Regresso do mal", descricao: "Descricao 8", imagem: #imageLiteral(resourceName: "filme8"))
        filmesArray.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "Descricao 9", imagem: #imageLiteral(resourceName: "filme9"))
        filmesArray.append(filme)
        
        filme = Filme(titulo: "Hardcore", descricao: "Descricao 10", imagem: #imageLiteral(resourceName: "filme10"))
        filmesArray.append(filme)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme : Filme = filmesArray[indexPath.row]
        let reuseCell = "reuseCell"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseCell") as! filmeCelula
        celula.tituloLabel?.text = filme.titulo
        celula.filmeImageCell.image = filme.imagem
        celula.descricaoLabel.text = filme.descricao
        
        
        return celula
    }
    
}

