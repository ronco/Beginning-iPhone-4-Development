//
//  AutosizeAppDelegate.h
//  Autosize
//
//  Created by Ronald White on 3/8/11.
//  Copyright 2011 TrackVia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AutosizeViewController;

@interface AutosizeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AutosizeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AutosizeViewController *viewController;

@end

