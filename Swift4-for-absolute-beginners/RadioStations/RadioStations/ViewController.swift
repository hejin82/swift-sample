//
//  ViewController.swift
//  RadioStations
//
//  Created by 何進 on 2018/6/2.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationFrequency: UILabel!
    @IBOutlet weak var stationBand: UILabel!
    
    var myStation: RadioStation
    
    required init?(coder aDecoder: NSCoder) {
        myStation = RadioStation()
        myStation.frequency = 104.7
        myStation.name = "KZZP"
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(_ sender: Any) {
        stationName.text = self.myStation.name
        stationFrequency.text = "\(myStation.frequency)"
        if myStation.isBandFM() == 1 {
            stationBand.text = "FM"
        } else {
            stationBand.text = "AM"
        }
    }
    
}

