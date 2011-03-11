//
//  DatePickerViewController.h
//  Pickers
//
//  Created by Ronald White on 3/9/11.
//  Copyright 2011 TrackVia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DatePickerViewController : UIViewController {
	UIDatePicker *datePicker;
}
@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
- (IBAction) buttonPressed;

@end
