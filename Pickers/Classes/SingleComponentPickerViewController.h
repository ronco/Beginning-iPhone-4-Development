//
//  SingleComponentPickerViewController.h
//  Pickers
//
//  Created by Ronald White on 3/9/11.
//  Copyright 2011 TrackVia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SingleComponentPickerViewController : UIViewController 
	<UIPickerViewDelegate, UIPickerViewDataSource> {
		UIPickerView *singlePicker;
		NSArray		 *pickerData;
}
@property (nonatomic, retain) IBOutlet UIPickerView *singlePicker;
@property (nonatomic, retain) NSArray *pickerData;
- (IBAction)buttonPressed;
@end
