//
//  ViewController.swift
//  Cards
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Create IB outlets
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // TODO: IB actions and code to update UI
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.currentTitle != nil {
            switch sender.currentTitle! {
            case "♣️4":
                self.updateLabels(with: "♣️4")
            case "♠️3":
                self.updateLabels(with: "♠️3")
            case "♦️8":
                self.updateLabels(with: "♦️8")
            case "♥️10":
                self.updateLabels(with: "♥️10")
            default:
                self.updateLabels(with: "?")
            }
        } else {
            print("oops")
        }
        
    }
    
    func updateLabels(with text: String) {
        self.topLabel.text = text
        self.middleLabel.text = text
        self.bottomLabel.text = text
    }

}
