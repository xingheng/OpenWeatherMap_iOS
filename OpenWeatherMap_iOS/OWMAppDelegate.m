//
//  OWMAppDelegate.m
//  OpenWeatherMap_iOS
//
//  Created by Will Han on 8/13/14.
//  Copyright (c) 2014 Will Han. All rights reserved.
//

#import "OWMAppDelegate.h"
#import "OWMWebRequest.h"

@implementation OWMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    OWMWebRequest *owm = [[OWMWebRequest alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
//    MainViewController *mainVC = [MainViewController new];
//    UserCenterViewController *userVC = [UserCenterViewController new];
//    UserCenterViewController *userVC2 = [UserCenterViewController new];
//    
//    UITabBarController *tabBarVC = [UITabBarController new];
//    tabBarVC.tabBar.translucent = NO;
//    tabBarVC.viewControllers = @[mainVC, userVC, userVC2];
//    
//    UINavigationController *naviController = [[UINavigationController alloc] initWithRootViewController:tabBarVC];
//    self.window.rootViewController = naviController;
//    
//    // make the content views' vertical offset in view controller starts from navigation bar's bottom instead of top screen.
//    naviController.navigationBar.translucent = NO;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
