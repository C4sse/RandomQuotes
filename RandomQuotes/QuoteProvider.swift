//
//  QuoteProvider.swift
//  RandomQuotes
//
//  Created by Casse Lit on 24/2/2020.
//  Copyright © 2020 Casse Lit. All rights reserved.
//

import GameKit

struct QuoteProvider {
    let quotes = [
        "Be yourself; everyone else is already taken ― Oscar Wilde",
        "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind ― Bernard M. Baruch",
        "You know you're in love when you can't fall asleep because reality is finally better than your dreams ― Dr. Seuss",
        "If you want to know what a man's like, take a good look at how he treats his inferiors, not his equals ― J.K. Rowling",
        "Always forgive your enemies; nothing annoys them so much ― Oscar Wilde",
        "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment ― Ralph Waldo Emerson",
        "It is better to remain silent at the risk of being thought a fool, than to talk and remove all doubt of it ― Maurice Switzer, Mrs. Goose, Her Book"
    ]
    
    func randomQuote() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: quotes.count)
        return quotes[randomNumber]
    }
}
