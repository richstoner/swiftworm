//
//  BodyPoint.m
//  sundial
//
//  Created by Rich Stoner on 12/5/19.
//  Copyright © 2019 Cajal Corporation. All rights reserved.
//

#import "BodyPoint.h"

@implementation BodyPoint

@synthesize x;
@synthesize y;
@synthesize z;

-(SCNVector3) asVector {
    return SCNVector3Make(self.x.floatValue, self.y.floatValue, self.z.floatValue);
}

@end
