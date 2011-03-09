//
//  SwitchViewController.h
//  View Switcher
//
//  Created by Ronald White on 3/8/11.
//  Copyright 2011 TrackVia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YellowViewController;
@class BlueViewController;

@interface SwitchViewController : UIViewController {
	YellowViewController *yellowViewController;
	BlueViewController *blueViewController;
}

@property (retain, nonatomic) YellowViewController *yellowViewController;
@property (retain, nonatomic) BlueViewController *blueViewController;

-(IBAction)switchViews:(id)sender;

@end
