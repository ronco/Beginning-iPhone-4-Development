    //
//  SwitchViewController.m
//  View Switcher
//
//  Created by Ronald White on 3/8/11.
//  Copyright 2011 TrackVia. All rights reserved.
//

#import "SwitchViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"


@implementation SwitchViewController
@synthesize yellowViewController;
@synthesize blueViewController;

- (void)viewDidLoad {
	BlueViewController *blueController = [[BlueViewController alloc] initWithNibName:@"BlueView"
																			  bundle:nil];
	self.blueViewController = blueController;
	[self.view insertSubview:blueController.view atIndex:0];
	[blueController release];
	[super viewDidLoad];
}

- (IBAction)switchViews:(id)sender
{
	if (self.yellowViewController.view.superview == nil) {
		if (self.yellowViewController == nil) {
			YellowViewController *yellowController =
			[[YellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
			self.yellowViewController = yellowController;
			[yellowController release];
		}
		[blueViewController.view removeFromSuperview];
		[self.view insertSubview:yellowViewController.view atIndex:0];
	}
	else {
		if (self.blueViewController == nil) {
			BlueViewController *blueController = [[BlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
			self.blueViewController = blueController;
			[blueController release];
		}
		[yellowViewController.view removeFromSuperview];
		[self.view insertSubview:blueViewController.view atIndex:0];
	}

}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
	if (self.blueViewController.view.superview == nil) {
		self.blueViewController = nil;
	} else {
		self.yellowViewController = nil;
	}

}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[yellowViewController release];
	[blueViewController release];
    [super dealloc];
}


@end
