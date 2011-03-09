//
//  View_SwitcherAppDelegate.h
//  View Switcher
//
//  Created by Ronald White on 3/8/11.
//  Copyright 2011 TrackVia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchViewController;
@interface View_SwitcherAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	SwitchViewController *switchViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SwitchViewController *switchViewController;

@end

