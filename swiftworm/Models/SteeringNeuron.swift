//
//  SteeringNeuron.swift
//  swiftworm
//
//  Created by Rich Stoner on 12/6/19.
//  Copyright © 2019 Cajal Corporation. All rights reserved.
//

import UIKit


class SteeringNeuron: NSObject {

    var I : Double = 0.5
    var theta : Double = -0.5
    var activation : Double!
    
    init(activation:Double){
        self.activation = activation
    }
    
}
