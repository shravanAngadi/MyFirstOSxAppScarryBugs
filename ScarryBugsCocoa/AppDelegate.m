//
//  AppDelegate.m
//  ScarryBugsCocoa
//
//  Created by Airatch on 9/26/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *window;
@property (nonatomic,strong) IBOutlet MasterViewController *masterViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    //1. Create instance of master View Controller and assign to this object which is base app context.
    self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    
    //2. Add the view controler just created to the main window's content view.
    [self.window.contentView addSubview:self.masterViewController.view];
    self.masterViewController.view.frame = ((NSView*)self.window.contentView).bounds;
    
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end