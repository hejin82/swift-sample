//
//  GuessInputViewController.swift
//  RandomNumberDelegate
//
//  Created by 何進 on 2018/6/2.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

// protocol used to send data back to the home view controller's userDidFinish
protocol GuessDelegate {
    func userDisFinish(_ controller: GuessInputViewController, guess: String)
}

class GuessInputViewController: UIViewController, UITextFieldDelegate {
    
    var delegate: GuessDelegate? = nil
    var previousGuess: String = ""

    @IBOutlet weak var guessLabel: UILabel!
    @IBOutlet weak var guessTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if !previousGuess.isEmpty {
            guessLabel.text = "your previous guess was \(previousGuess)"
        }
        guessTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func saveGuess(_ sender: Any) {
        if let delegate = delegate, let guessText = guessTextField.text {
            delegate.userDisFinish(self, guess: guessText)
        }
    }
    
}
