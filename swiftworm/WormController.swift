//
//  WormController.swift
//  swiftworm
//
//  Created by Rich Stoner on 12/6/19.
//  Copyright © 2019 Cajal Corporation. All rights reserved.
//

import Foundation
import SceneKit

class WormController {
    
    var steeringSynapses : SteeringSynapseCollection!
    var steeringNeurons : SteeringNeuronCollection!
    
    var simulation : WormBridge!
    
    init() {
        
        self.steeringNeurons = SteeringNeuronCollection()
        self.steeringSynapses = SteeringSynapseCollection()
        
        self.simulation = WormBridge()
        self.simulation.initModel()
        
        self.startSimulation()
        
    }
    
    func startSimulation() {
        
        DispatchQueue.global(qos: .userInteractive).async {
            print("This is run on the background queue")

            while (true) {
                
                self.simulation.step(0.0)
        
                var bodyRaw = self.simulation.getBody() as NSArray
                var bp0 = bodyRaw[0] as! BodyPoint
                print(bp0.asVector())
                
            }
//            
//            DispatchQueue.main.async {
//            }
        }
        
    }
    
}
