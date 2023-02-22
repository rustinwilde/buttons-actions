//
//  Extensions.swift
//  Button-actions
//
//  Created by Rustin Wilde on 20.02.23.
//

import UIKit

extension UIButton {
    func wiggle () {
        let wiggleAnimation = CABasicAnimation(keyPath: "position")
        wiggleAnimation.duration = 0.05
        wiggleAnimation.repeatCount = 5
        wiggleAnimation.autoreverses = true
        wiggleAnimation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        wiggleAnimation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnimation, forKey: "position")
//        UIView.animate(withDuration: 0.3) {
//            self.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
   //     }
        UIView.animate(withDuration: 0.6, animations: {
            self.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
        }) { (finished) in
            UIView.animate(withDuration: 1.4, animations: {
                self.backgroundColor = UIColor(red: 0/255, green: 117/255, blue: 227/255, alpha: 1.0)
            })
        }
    }
    
    func dim () {
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = 0.75
        }) { (finished) in
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 1.0
            })
        }
    }
    
    func colorize() {
        let randomNumberArray =  generateRandomNumbers(quantity: 3)
        let randomColor = UIColor (red: randomNumberArray [0]/255, green: randomNumberArray [1]/255, blue: randomNumberArray [2]/255, alpha: 1.0)
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = randomColor
        }
    }
    
}
