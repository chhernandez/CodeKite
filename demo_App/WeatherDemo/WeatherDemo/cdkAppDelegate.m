//
//  cdkAppDelegate.m
//  WeatherDemo
//
//  Created by Carlos Hernandez on 2/6/14.
//  Copyright (c) 2014 Carlos Hernandez. All rights reserved.
//

#import "cdkAppDelegate.h"
#import <Parse/Parse.h>


@implementation cdkAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [Parse setApplicationId:@"2u19gzNOrLZzNpjjGbxsrm0N7Zi2vc0GjmcjMz0F"
                  clientKey:@"MUw1snf6QWujtUYz6Ih0ndSo4RYZzSLn5GfNpd97"];
    
   // cdkTableViewController *controller = [[cdkTableViewController alloc] init];
    
    //self.window.
    
   // PFQueryTableViewController *controller = [[PFQueryTableViewController alloc] initWithClassName:@"fashion"];
 //
  // self.window.rootViewController = controller;
  // [self.window makeKeyAndVisible];
    
    
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge|
     UIRemoteNotificationTypeAlert|
     UIRemoteNotificationTypeSound];
    
    // Override point for customization after application launch.
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
/*
- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    // Store the deviceToken in the current installation and save it to Parse.
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation setDeviceTokenFromData:deviceToken];
    [currentInstallation saveInBackground];
}

- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo {
    [PFPush handlePush:userInfo];
}*/

@end