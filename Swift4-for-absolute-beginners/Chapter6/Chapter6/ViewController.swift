//
//  ViewController.swift
//  Chapter6
//
//  Created by 何進 on 2018/6/2.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func showName(sender: AnyObject) {
        nameLabel.text = "my name is brad"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

