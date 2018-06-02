//
//  ViewController.swift
//  RandomNumberDelegate
//
//  Created by 何進 on 2018/6/2.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GuessDelegate {
    
    var previousGuess = ""
    var randomNumber = 0

    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createRandomNumber()
        playAgainButton.isHidden = true
        resultLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playAgain(_ sender: Any) {
        createRandomNumber()
        playAgainButton.isHidden = true
        guessButton.isHidden = false
        resultLabel.text = ""
        userGuessLabel.text = "New Game"
        previousGuess = ""
    }
    
    func userDisFinish(_ controller: GuessInputViewController, guess: String) {
        userGuessLabel.text = "the guess was " + guess
        previousGuess = guess
        let numberGuess = Int(guess)
        if (numberGuess! > randomNumber) {
            resultLabel.text = "guess too high"
        }
        else if numberGuess! < randomNumber {
            resultLabel.text = "guess too low"
        }
        else {
            resultLabel.text = "guess is correct"
            playAgainButton.isHidden = false
            guessButton.isHidden = true
        }
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
    
    func createRandomNumber() {
        randomNumber = Int(arc4random_uniform(100))
        print("the random number is: \(randomNumber)")
        return
    }
    
    // MARK: - Seques
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MyGuessSegue" {
            let vc = segue.destination as! GuessInputViewController
            vc.previousGuess = previousGuess
            vc.delegate = self
        }
    }
    
}

