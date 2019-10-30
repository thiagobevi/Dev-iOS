//
//  Image.swift
//  Marvel
//
//  Created by Thiago Bevilacqua on 10/30/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation
import RealmSwift

class Image {
    var urlImage: URL
    var typeImage = ""
    
    init(url: URL) {
        self.urlImage = url
    }
}
