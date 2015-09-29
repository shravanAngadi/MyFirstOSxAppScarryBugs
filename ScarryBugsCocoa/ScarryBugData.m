//
//  ScarryBugData.m
//  ScarryBugsCocoa
//
//  Created by Airatch on 9/28/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import "ScarryBugData.h"

@implementation ScarryBugData

- (id) initWithTitle:(NSString *)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    
    return self;
}

@end
