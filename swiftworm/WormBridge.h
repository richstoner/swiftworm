//
//  WormBridge.h
//  swiftworm
//
//  Created by Rich Stoner on 12/6/19.
//  Copyright © 2019 Cajal Corporation. All rights reserved.
//



#import <Foundation/Foundation.h>
#include <ida/ida.h>
#include <ida/ida_dense.h>
#include <nvector/nvector_serial.h>
#include <sundials/sundials_types.h>
#include <sundials/sundials_math.h>

NS_ASSUME_NONNULL_BEGIN

@interface WormBridge : NSObject

- (void) initModel;

- (void) setSteeringSynapseWeight:(NSArray*) weights;

- (void) step:(NSNumber*)saltStimulus;

- (NSArray*) getSteeringActivations;

- (NSArray*) getDorsalMotorActivations;

- (NSArray*) getVentralMotorActivations;

- (NSArray*) getDorsalMuscleActivations;

- (NSArray*) getVentralMuscleActivations;

- (NSArray*) getBody;

- (NSArray*) getSegmentAngles;

- (void) terminateModel;


@end

NS_ASSUME_NONNULL_END
