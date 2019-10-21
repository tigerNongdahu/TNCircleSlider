//
//  AppDelegate.m
//  TNCircleSliderDemo
//
//  Created by TigerNong on 2019/10/21.
//  Copyright © 2019 TigerNong. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController *vc = [[ViewController alloc] init];
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}




@end
