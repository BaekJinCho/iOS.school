//
//  AppDelegate.m
//  Practice
//
//  Created by 조백진 on 2017. 2. 21..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //TabBar 만들어보기
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    ViewController *vc = [[ViewController alloc] init];
    SecondViewController *sVC = [[SecondViewController alloc] init];
    
    UINavigationController *temp = [[UINavigationController alloc] initWithRootViewController:vc];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:sVC];
    
    UITabBarController *tab = [[UITabBarController alloc]init];
    tab.viewControllers = @[temp, nvc];
    UITabBarItem *item  = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:100];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:200];
    
    [temp setTabBarItem:item];
    [nvc setTabBarItem:item2];
    
    self.window.rootViewController = tab;
    [self.window makeKeyAndVisible];
    
    
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    
//    ViewController *vc = [[ViewController alloc] init];
//    SecondViewController *sVC = [[SecondViewController alloc] init];
//    
//    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:sVC];
//    UITabBarController *tab = [[UITabBarController alloc]init];
//    tab.viewControllers = @[vc, nvc];
//    UITabBarItem *item  = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:100];
//    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:200];
//    
//    [vc setTabBarItem:item];
//    [nvc setTabBarItem:item2];
//    
//    self.window.rootViewController = tab;
//    [self.window makeKeyAndVisible];

    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
