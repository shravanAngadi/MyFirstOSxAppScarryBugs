//
//  MasterViewController.m
//  ScarryBugsCocoa
//
//  Created by Airatch on 9/26/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import "MasterViewController.h"
#import "ScarryBugDoc.h"
#import "ScarryBugData.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (NSView *) tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    // Get a new ViewCell
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    
    // Since this is a single-column table view, this would not be necessary.
    // But it's a good practice to do it in order by remember it when a table is multicolumn.
    if( [tableColumn.identifier isEqualToString:@"BugColumn"] )
    {
        ScarryBugDoc *bugDoc = [self.bugArray objectAtIndex:row];
        
        cellView.imageView.image = bugDoc.thumbImage;
        cellView.textField.stringValue = bugDoc.scarryBugData.title;
        return cellView;
    }
    return cellView;
}


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [self.bugArray count];
}

@end
