//
//  ViewController.swift
//  RandomQuotes
//
//  Created by Casse Lit on 24/2/2020.
//  Copyright © 2020 Casse Lit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var quoteButton: UIButton!
    
    let quoteProvider = QuoteProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        quoteLabel.text = "Some motivational text"
    }

    @IBAction func showFact(_ sender: Any) {
        quoteLabel.text = quoteProvider.randomQuote()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor // When we click the button the color changes to this color
        quoteButton.tintColor = randomColor // change button text color
    }
}

