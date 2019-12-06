//
//  BodyPoint.h
//  sundial
//
//  Created by Rich Stoner on 12/5/19.
//  Copyright © 2019 Cajal Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SceneKit/SceneKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BodyPoint : NSObject

// TODO: these aren't correct labels - placehodlers for now

@property (nonatomic, retain) NSNumber* x;
@property (nonatomic, retain) NSNumber* y;
@property (nonatomic, retain) NSNumber* z;

-(SCNVector3) asVector;

@end


NS_ASSUME_NONNULL_END
