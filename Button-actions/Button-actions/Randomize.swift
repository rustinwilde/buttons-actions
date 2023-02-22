//
//  Randomize.swift
//  Button-actions
//
//  Created by Rustin Wilde on 20.02.23.
//

import UIKit

func generateRandomNumbers (quantity: Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}


