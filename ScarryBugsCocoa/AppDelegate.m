//
//  AppDelegate.m
//  ScarryBugsCocoa
//
//  Created by Airatch on 9/26/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "ScarryBugDoc.h"


@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *window;
@property (nonatomic,strong) IBOutlet MasterViewController *masterViewController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    //1. Create instance of master View Controller and assign to this object which is base app context.
    self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    
    ScarryBugDoc *bug1 = [[ScarryBugDoc alloc] initWithTitle:@"Potato Bug" rating:4 thumbImage:[NSImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[NSImage imageNamed:@"potatoBug.jpg"]];
    ScarryBugDoc *bug2 = [[ScarryBugDoc alloc] initWithTitle:@"House Centipede" rating:3 thumbImage:[NSImage imageNamed:@"centipedeThumb.jpg"] fullImage:[NSImage imageNamed:@"centipede.jpg"]];
    ScarryBugDoc *bug3 = [[ScarryBugDoc alloc] initWithTitle:@"Wolf Spider" rating:5 thumbImage:[NSImage imageNamed:@"wolfSpiderThumb.jpg"] fullImage:[NSImage imageNamed:@"wolfSpider.jpg"]];
    
    ScarryBugDoc *bug4 = [[ScarryBugDoc alloc] initWithTitle:@"Lady Bug" rating:1 thumbImage:[NSImage imageNamed:@"ladybugThumb.jpg"] fullImage:[NSImage imageNamed:@"ladybug.jpg"]];
    
    NSMutableArray *bugs = [NSMutableArray arrayWithObjects: bug1, bug2, bug3, bug4, nil];
    
    self.masterViewController.bugArray = bugs;
    
    //2. Add the view controler just created to the main window's content view.
    [self.window.contentView addSubview:self.masterViewController.view];
    self.masterViewController.view.frame = ((NSView*)self.window.contentView).bounds;
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end