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
	[UIView beginAnimations:@"View Flip" context:NULL];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
	
	if (self.yellowViewController.view.superview == nil) {
		if (self.yellowViewController == nil) {
			YellowViewController *yellowController = [[YellowViewController alloc]
													  initWithNibName:@"YellowView"
															   bundle:nil];
			self.yellowViewController = yellowController;
			[yellowController release];
		}
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight
							   forView:self.view
								 cache:YES];
		[yellowViewController viewWillAppear:YES];
		[blueViewController viewWillDisappear:YES];
		[blueViewController.view removeFromSuperview];
		[self.view insertSubview:yellowViewController.view atIndex:0];
		[blueViewController viewDidDisappear:YES];
		[yellowViewController viewDidAppear:YES];
	}
	else {
		if (self.blueViewController == nil)
		{
			BlueViewController *blueController =
			[[BlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
			self.blueViewController = blueController;
			[blueController release];
		}
		[UIView setAnimationTransition:
		 UIViewAnimationTransitionFlipFromLeft
							   forView:self.view
								 cache:YES];
		[blueViewController viewWillAppear:YES];
		[yellowViewController viewWillDisappear:YES];
		[yellowViewController.view removeFromSuperview];
		[self.view insertSubview:blueViewController.view atIndex:0];
		[yellowViewController viewDidDisappear:YES];
		[blueViewController viewDidAppear:YES];
	}
	[UIView commitAnimations];

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
