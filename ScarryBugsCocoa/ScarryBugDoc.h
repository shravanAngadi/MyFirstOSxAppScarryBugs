//
//  ScarryBugDoc.h
//  ScarryBugsCocoa
//
//  Created by Airatch on 9/28/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import <Foundation/Foundation.h>

//#include "ScarryBugData.h"
@class ScarryBugData;


@interface ScarryBugDoc : NSObject

@property (strong) ScarryBugData *scarryBugData;
@property (strong) NSImage *thumbImage;
@property (strong) NSImage *fullImage;


-(id) initWithTitle: (NSString*) title rating:(float)rating thumbImage:(NSImage*)thumbImage fullImage:(NSImage*)fullImage ;


@end
