//
//  ViewController.swift
//  AskMeAnything
//
//  Created by C94280a on 18/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResponse: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var buttonAsk: UIButton!
    
    let responses = ["The answer is Yes", "The answer is Not", "I have no idea"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    fileprivate func setupUI() {
        backgroundView.layer.cornerRadius = 30
        buttonAsk.layer.cornerRadius = 20
    }
    
    @IBAction func askButtonTapped(_ sender: Any) {
        labelResponse.text = responses.randomElement()
    }
    
}
