//
//  DetailViewController.swift
//  BookStore
//
//  Created by 何進 on 2018/6/2.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var pagesLabel: UILabel!
    @IBOutlet weak var readSwitch: UISwitch!
    
    var delegate: BookStoreDelegate? = nil
    var myBook = Book()
    
    func configureView() {
        // Update the user interface for the detail item.
        if let myBook = detailItem {
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            descriptionTextView.text = myBook.description
            pagesLabel.text = String(myBook.pages)
            if myBook.readThisBook {
                readSwitch.isOn  = true
            } else {
                readSwitch.isOn = false
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Book? {
        didSet {
            // Update the view.
            // configureView()
        }
    }

    @IBAction func deleteBookAction(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Warning", message: "Delete this book?", preferredStyle: .alert)
        let noAction = UIAlertAction(title: "No", style: .cancel) { (action) in
            print("Cancel")
        }
        alertController.addAction(noAction)
        let yesAction = UIAlertAction(title: "Yes", style:.destructive) { (action) in
            self.delegate?.deleteBook(self)
        }
        alertController.addAction(yesAction)
        present(alertController, animated: false, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editDetail" {
            if let vc = segue.destination as? AddBookViewController {
                vc.delegate = delegate
                vc.editbook = true
                vc.book = myBook
            }
        }
    }

}

