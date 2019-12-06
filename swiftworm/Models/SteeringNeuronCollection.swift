//
//  SteeringNeuronCollection.swift
//  swiftworm
//
//  Created by Rich Stoner on 12/6/19.
//  Copyright © 2019 Cajal Corporation. All rights reserved.
//

import Foundation

class SteeringNeuronCollection {
    
    let asel : SteeringNeuron!
    let aser : SteeringNeuron!
    let aiyl : SteeringNeuron!
    let aiyr : SteeringNeuron!
    let aizl : SteeringNeuron!
    let aizr : SteeringNeuron!
    let smbd : SteeringNeuron!
    let smbv : SteeringNeuron!
    
    init() {
        
        self.asel = SteeringNeuron(activation:0.0)
        self.aser = SteeringNeuron(activation:0.0)
        self.aiyl = SteeringNeuron(activation:0.0)
        self.aiyr = SteeringNeuron(activation:0.0)
        self.aizl = SteeringNeuron(activation:0.0)
        self.aizr = SteeringNeuron(activation:0.0)
        self.smbd = SteeringNeuron(activation:0.0)
        self.smbv = SteeringNeuron(activation:0.0)
        
    }
    
}
