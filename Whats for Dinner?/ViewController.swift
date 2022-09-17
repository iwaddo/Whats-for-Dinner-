//
//  ViewController.swift
//  Whats for Dinner?
//
//  Created by Ian Waddington on 17/09/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dinnerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dinnerLabel.text = ""
    }

    
    
    @IBAction func dinnerButton(_ sender: UIButton) {
        let dinnerNumber = Int.random(in: 1...4)
        imageView.image = UIImage(named: "dinner\(String(dinnerNumber))")
        if dinnerNumber == 1 {
            dinnerLabel.text = "Pizza"
        } else if dinnerNumber == 2 {
            dinnerLabel.text = "Burritos"
        } else if dinnerNumber == 3 {
            dinnerLabel.text = "Susshi"
        } else if dinnerNumber == 4 {
            dinnerLabel.text = "Cobb Salad"
        } else {
            dinnerLabel.text = "Error"
        }
        
    }
    
}

