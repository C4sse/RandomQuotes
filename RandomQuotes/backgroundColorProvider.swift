//
//  backgroundColorProvider.swift
//  RandomQuotes
//
//  Created by Casse Lit on 24/2/2020.
//  Copyright © 2020 Casse Lit. All rights reserved.
//

import UIKit
import GameKit

struct BackgroundColorProvider {
    
    let colors = [
        UIColor(red: 90/255, green: 187/255, blue: 181/255, alpha: 1.0), // teal
        UIColor(red: 222/255, green: 171/255, blue: 66/255, alpha: 1.0), // yellow
        UIColor(red: 223/255, green: 86/255, blue: 94/255, alpha: 1.0), // red
        UIColor(red: 239/255, green: 130/255, blue: 100/255, alpha: 1.0), // orange
        UIColor(red: 77/255, green: 75/255, blue: 82/255, alpha: 1.0), // dark
        UIColor(red: 105/255, green: 94/255, blue: 133/255, alpha: 1.0), // purple
        UIColor(red: 85/255, green: 176/255, blue: 112/255, alpha: 1.0) // green
    ]
    
    func randomColor() -> UIColor {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomNumber]
    }
}
