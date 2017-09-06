//
//  LinearFunction.swift
//  MiniChallenge4
//
//  Created by Guilherme Paciulli on 05/09/17.
//  Copyright © 2017 Guilherme Paciulli. All rights reserved.
//

import Foundation
import SpriteKit

class LinearFunction: Function {
    
    var a: Double = 1
        
    override init(scale: Double) {
        super.init(scale: scale)
        self.setRange(step: 1, min: -10, max: 10)
    }
    
    override func f(x: Double) -> Double {
        return a * x
    }
    
    override func pinchUpdate(factor: CGFloat) {
        a += Double(factor) / 25
        if a > 5 {
            a = 5
        } else if a < -5 {
            a = -5
        }
    }
    
}
