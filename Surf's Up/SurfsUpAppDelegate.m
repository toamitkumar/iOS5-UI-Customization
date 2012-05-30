//
//  SurfsUpAppDelegate.m
//  Surf's Up
//
//  Created by Baranski Steve on 7/1/11.
//  Copyright 2011 komorka technology, llc. All rights reserved.
//

#import "SurfsUpAppDelegate.h"

#import "SurfsUpViewController.h"

@implementation SurfsUpAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    
    SurfsUpViewController *vc = [[SurfsUpViewController alloc] initWithStyle:UITableViewStylePlain];
    [vc setTitle:@"Surf's Up"];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:vc];
    [self setViewController:navVC];
    
    [[self window] setRootViewController:[self viewController]];
    [[self window] makeKeyAndVisible];
    
    return YES;
}

@end
