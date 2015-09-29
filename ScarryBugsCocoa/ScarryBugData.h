//
//  ScarryBugData.h
//  ScarryBugsCocoa
//
//  Created by Airatch on 9/28/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScarryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle:(NSString*) title rating:(float) rating;

@end
