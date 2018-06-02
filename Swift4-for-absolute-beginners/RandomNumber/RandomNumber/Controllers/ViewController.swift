//
//  ViewController.swift
//  RandomNumber
//
//  Created by 何進 on 2018/6/2.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func seedAction(_ sender: Any) {
        srandom(CUnsignedInt(time(nil)))
        randomNumberLabel.text = "Generator Seeded"
    }
    
    @IBAction func generateAction(_ sender: Any) {
        let generated = (arc4random() % 100) + 1
        randomNumberLabel.text = "\(generated)"
    }
    
}

