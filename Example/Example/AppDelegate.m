//
//  AppDelegate.m
//  Example
//
//  Created by Elf Sundae on 2019/11/13.
//  Copyright © 2019 Elf Sundae. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = UIColor.whiteColor;

    self.window.rootViewController = [[UINavigationController alloc]
                                      initWithRootViewController:[ViewController new]];

    [self.window makeKeyAndVisible];
    return YES;
}

@end
