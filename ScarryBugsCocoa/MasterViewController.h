//
//  MasterViewController.h
//  ScarryBugsCocoa
//
//  Created by Airatch on 9/26/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import <Cocoa/Cocoa.h>



@interface MasterViewController : NSViewController

@property (strong) NSMutableArray *bugArray;

- (NSView *) tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView;

@end
