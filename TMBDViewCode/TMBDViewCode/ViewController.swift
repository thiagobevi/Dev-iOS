//
//  ViewController.swift
//  TMBDViewCode
//
//  Created by Thiago Bevilacqua on 1/23/20.
//  Copyright © 2020 Thiago Bevilacqua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    var tableView = UITableView()
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Videos"
        videos = fetchData()
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(VideoCell.self, forCellReuseIdentifier: "VideoCell")
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        let video = videos[indexPath.row]
        cell.set(video: video)
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = DetailViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

extension ViewController {
    func fetchData() -> [Video] {
        let  video1 = Video(image: Images.bola!, title: "Bola", desc: "")
        let  video2 = Video(image: Images.triangulo!, title: "triangulo", desc: "")
        let  video3 = Video(image: Images.quadrado!, title: "quadrado", desc: "")
        let  video4 = Video(image: Images.cone!, title: "cone", desc: "")
        
        return [video1, video2, video3, video4]
    }
    
}

