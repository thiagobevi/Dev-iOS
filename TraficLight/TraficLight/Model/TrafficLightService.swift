//
//  TrafficLightService.swift
//  TraficLight
//
//  Created by Thiago Bevilacqua on 12/6/19.
//  Copyright © 2019 Thiago Bevilacqua. All rights reserved.
//

import Foundation

class TrafficLightService {
    
    func getTrafficLight(colorName:(String), callback:(TrafficLight?) -> Void)  {
        let trafficLights = [TrafficLight(colorName: "Red", description: "Stop"),
                             TrafficLight(colorName: "Yellow", description: "Attention"),
                             TrafficLight(colorName: "Green", description: "Go")
                            ]
        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callback(foundTrafficLight)
        } else  {
            callback(nil)
        }
    }
}
