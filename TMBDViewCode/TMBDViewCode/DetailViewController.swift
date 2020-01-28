//
//  DetailViewController.swift
//  TMBDViewCode
//
//  Created by Thiago Bevilacqua on 1/27/20.
//  Copyright © 2020 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailTitle = UILabel()
    var detailsDesc = UILabel()
    // var safeArea: UILayoutGuide!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Video Details"
        view.backgroundColor = .white
        setupDetailTitle()
        setupDetailDesc()
        setDetailTitleConstraints()
        setDetailDescConstraints()
    }
    
    func setupDetailTitle() {
        detailTitle.backgroundColor = .black
        detailTitle.textColor = .white
        detailTitle.font = .boldSystemFont(ofSize: 30)
        detailTitle.text = "Teste Detalhe Titulo"
        
        view.addSubview(detailTitle)
    }
    
    func setupDetailDesc() {
        detailsDesc.backgroundColor = .lightGray
        detailsDesc.textColor = .black
        detailsDesc.textAlignment = .center
        detailsDesc.text = "Descrição das paradas la la la vamos ver no que da!"
        
        view.addSubview(detailsDesc)
    }
    
    func setDetailTitleConstraints() {
        detailTitle.translatesAutoresizingMaskIntoConstraints = false
        detailTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        detailTitle.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant:  20).isActive = true
        detailTitle.widthAnchor.constraint(equalToConstant: 60).isActive = true
        detailTitle.heightAnchor.constraint(equalToConstant: 80).isActive = true
        detailTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    func setDetailDescConstraints() {
        detailsDesc.translatesAutoresizingMaskIntoConstraints = false
        detailsDesc.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        detailsDesc.topAnchor.constraint(equalTo: detailTitle.bottomAnchor, constant: 60).isActive = true
        detailsDesc.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        detailsDesc.numberOfLines = 0
  
        
    }
    
}
