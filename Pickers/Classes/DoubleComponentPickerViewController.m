//
//  DoubleComponentPickerViewController.m
//  Pickers
//
//  Created by Ronald White on 3/9/11.
//  Copyright 2011 TrackVia. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"


@implementation DoubleComponentPickerViewController
@synthesize doublePicker;
@synthesize fillingTypes;
@synthesize breadTypes;

-(IBAction)buttonPressed
{
	NSInteger fillingRow = [doublePicker selectedRowInComponent:kFillingComponent];
	NSInteger breadRow = [doublePicker selectedRowInComponent:kBreadComponent];
	NSString *bread = [breadTypes objectAtIndex:breadRow];
	NSString *filling = [fillingTypes objectAtIndex:fillingRow];
	
	NSString *message = [[NSString alloc] initWithFormat:
						 @"Your %@ on %@ bread will be right up.",
						 filling, bread];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thank you for your order"
													message:message
												   delegate:nil
										  cancelButtonTitle:@"Great!"
										  otherButtonTitles:nil];
	[alert show];
	[alert release];
	[message release];
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSArray *fillingArray = [[NSArray alloc]
							 initWithObjects:@"Ham", @"Turkey", @"Peanut Butter",
							 @"Tuna Salad", @"Nutella", @"Roast Beef", @"Vegemite", nil];
	self.fillingTypes = fillingArray;
	[fillingArray release];
	
	NSArray *breadArray = [[NSArray alloc] initWithObjects:@"White", @"Whole Wheat",
						   @"Rye", @"Sourdough", @"Seven Grain", nil];
	self.breadTypes = breadArray;
	[breadArray release];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	self.doublePicker = nil;
	self.breadTypes = nil;
	self.fillingTypes = nil;
}


- (void)dealloc {
	[doublePicker release];
	[breadTypes release];
	[fillingTypes release];
    [super dealloc];
}

#pragma mark -
#pragma mark Picker Data Source Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	if (component == kBreadComponent) {
		return [self.breadTypes count];
	}
	return [self.fillingTypes count];
}

#pragma mark Picker Delegate Methods
-(NSString *)pickerView:(UIPickerView *)pickerView
			titleForRow:(NSInteger)row
		   forComponent:(NSInteger)component {
	if (component == kBreadComponent) {
		return [self.breadTypes objectAtIndex:row];
	}
	return [self.fillingTypes objectAtIndex:row];
}

@end
