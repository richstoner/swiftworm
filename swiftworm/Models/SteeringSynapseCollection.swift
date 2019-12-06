//
//  SteeringSynapseCollection.swift
//  swiftworm
//
//  Created by Rich Stoner on 12/6/19.
//  Copyright © 2019 Cajal Corporation. All rights reserved.
//

import Foundation

class SteeringSynapseCollection {
    
    var asel0 : SteeringSynapse!
    var asel1 : SteeringSynapse!
    var aser0 : SteeringSynapse!
    var aser1 : SteeringSynapse!
    var aiyl0 : SteeringSynapse!
    var aiyr0 : SteeringSynapse!
    var aizl0 : SteeringSynapse!
    var aizl1 : SteeringSynapse!
    var aizr0 : SteeringSynapse!
    var aizr1 : SteeringSynapse!

    init() {
        
        self.asel0 = SteeringSynapse(weight: 1.0)
        self.asel1 = SteeringSynapse(weight: 0.0)
        self.aser0 = SteeringSynapse(weight: 0.0)
        self.aser1 = SteeringSynapse(weight: 1.0)
        self.aiyl0 = SteeringSynapse(weight: 1.0)
        self.aiyr0 = SteeringSynapse(weight: 1.0)
        self.aizl0 = SteeringSynapse(weight: 0.7)
        self.aizl1 = SteeringSynapse(weight: 0.7)
        self.aizr0 = SteeringSynapse(weight: 0.0)
        self.aizr1 = SteeringSynapse(weight: 3.0 / 5.0)
        
    }

}
