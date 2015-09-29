//
//  ScarryBugDoc.m
//  ScarryBugsCocoa
//
//  Created by Airatch on 9/28/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import "ScarryBugDoc.h"
#import "ScarryBugData.h"

@implementation ScarryBugDoc

-(id) initWithTitle: (NSString*) title rating:(float)rating thumbImage:(NSImage*)thumbImage fullImage:(NSImage*)fullImage {
    if ((self = [super init])) {
        self.scarryBugData = [[ScarryBugData alloc] initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    
    return self;
}

@end
