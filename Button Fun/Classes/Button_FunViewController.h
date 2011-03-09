//
//  Button_FunViewController.h
//  Button Fun
//
//  Created by Ronald White on 3/7/11.
//  Copyright 2011 TrackVia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Button_FunViewController : UIViewController {
	UILabel	*statusText;
}

@property (nonatomic, retain) IBOutlet UILabel *statusText;

-(IBAction)buttonPressed:(id)sender;

@end

