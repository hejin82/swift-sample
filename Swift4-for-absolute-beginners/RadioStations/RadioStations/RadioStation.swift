//
//  RadioStation.swift
//  RadioStations
//
//  Created by 何進 on 2018/6/2.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

class RadioStation: NSObject {

    var name: String
    var frequency: Double
    
    override init() {
        name = "default"
        frequency = 100
    }
    
    static var minAMFrequency: Double = 520.0
    static var maxAMFrequency: Double = 1610
    static var minFMFrequency: Double = 88.3
    static var maxFMFrequency: Double = 107.9
    
    func isBandFM() -> Int {
        if frequency >= RadioStation.minAMFrequency && frequency <= RadioStation.maxFMFrequency {
            return 1
        } else {
            return 0
        }
    }
}
