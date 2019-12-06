//
//  sundial.m
//  sundial
//
//  Created by Rich Stoner on 12/4/19.
//  Copyright © 2019 Cajal Corporation. All rights reserved.
//

#import "sundial.h"
#import "BodyPoint.h"

@implementation sundial

#define NUM_ACTIVATIONS 12

- (void) initModel {
    
    // initialize the model
    init();
}

- (void) setSteeringSynapseWeight:(NSArray*)weights {
    
    for (int i=0; i<[weights count]; i++){
        NSNumber* weight = [weights objectAtIndex:i];
        set_steering_synapse_weight(i, [weight doubleValue]);
    }
}

- (void) step:(NSNumber*)saltStimulus {
    
    step([saltStimulus doubleValue]);
    
}

- (NSArray*) getSteeringActivations {
    
    NSMutableArray* activations = [[NSMutableArray alloc] init];
    
    
    
    return activations;
    
}

- (NSArray*) getDorsalMotorActivations {
    
    NSMutableArray* activations = [[NSMutableArray alloc] init];
    for (int i=0;i<NUM_ACTIVATIONS; i++){
        NSNumber* activation = [NSNumber numberWithDouble:get_dorsal_motor_activation(i)];
        [activations addObject:activation];
    }
    return activations;
}

- (NSArray*) getVentralMotorActivations {
    
    NSMutableArray* activations = [[NSMutableArray alloc] init];
    for (int i=0;i<NUM_ACTIVATIONS; i++){
        NSNumber* activation = [NSNumber numberWithDouble:get_ventral_motor_activation(i)];
        [activations addObject:activation];
    }
    return activations;
}

- (NSArray*) getDorsalMuscleActivations {
    NSMutableArray* activations = [[NSMutableArray alloc] init];
    for (int i=0;i<NUM_ACTIVATIONS; i++){
        NSNumber* activation = [NSNumber numberWithDouble:get_dorsal_muscle_activation(i)];
        [activations addObject:activation];
    }
    return activations;
}

- (NSArray*) getVentralMuscleActivations {
    NSMutableArray* activations = [[NSMutableArray alloc] init];
    for (int i=0;i<NUM_ACTIVATIONS; i++){
        NSNumber* activation = [NSNumber numberWithDouble:get_ventral_muscle_activation(i)];
        [activations addObject:activation];
    }
    return activations;
}

- (NSArray*) getBody {
    NSMutableArray* body = [[NSMutableArray alloc] initWithCapacity:NBAR];
    for (int i=0;i<NBAR; i++){
        NSNumber* x = [NSNumber numberWithDouble:get_body_point(i)];
        NSNumber* y = [NSNumber numberWithDouble:get_body_point(i+1)];
        NSNumber* z = [NSNumber numberWithDouble:get_body_point(i+2)];
        
        BodyPoint* bp = [[BodyPoint alloc] init];
        bp.x = x;
        bp.y = y;
        bp.z = z;
        [body addObject:bp];
    }
    return body;
}

- (NSArray*) getSegmentAngles {
    
    NSMutableArray* angles = [[NSMutableArray alloc] initWithCapacity:12];

    for (int i=0; i<12; i++){
        NSNumber* angle = [NSNumber numberWithDouble:get_segment_angle(i)];
        [angles addObject:angle];
    }
    return angles;
}

- (void) terminateModel {
    
    terminate();
    
}

@end
