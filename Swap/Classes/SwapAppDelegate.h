//
//  SwapAppDelegate.h
//  Swap
//
//  Created by Ronald White on 3/8/11.
//  Copyright 2011 TrackVia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwapViewController;

@interface SwapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SwapViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SwapViewController *viewController;

@end

