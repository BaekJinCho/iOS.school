//
//  AppDelegate.m
//  Navigation
//
//  Created by 조백진 on 2017. 2. 21..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /******************************TabBar 만들어보기***********************************/
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *vc = [[ViewController alloc] init];
    ViewController *vc2 = [[ViewController alloc] init];
    ViewController *vc3 = [[ViewController alloc] init];
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    tabbar.viewControllers = @[vc,vc2,vc3];
    
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"title" image:[self imageWithImagName:@"1.jpeg" scaledToSize:CGSizeMake(30,30)] selectedImage:nil];
    //UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"title" image:[UIImage imageNamed:@"1"] tag:100];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"content" image:[UIImage imageNamed:@"232"] selectedImage:nil];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"range" image:[UIImage imageNamed:@"3232"] selectedImage:nil];
    item.badgeColor = [UIColor redColor];
    vc.tabBarItem = item;
    vc2.tabBarItem = item2;
    vc3.tabBarItem = item3;
    self.window.rootViewController = tabbar;
    [self.window makeKeyAndVisible];
    
    /********************storyboard를 사용하지 않고 코드로 작성할 때********************/
    //윈도우 만들기
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //컨트롤러 만들기
    UIStoryboard *st = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //UIViewController *vc = [st instantiateViewControllerWithIdentifier:@"ViewController"];
    //UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    UINavigationController *navi = [st instantiateViewControllerWithIdentifier:@"UINavigationController"];
    //UINavigationController *navi = [st instantiateInitialViewController];
    
    //윈도우에 rootViewController 지정
    self.window.rootViewController = navi;
    [self.window makeKeyAndVisible];
    return YES;
}

/*************************TabBar 이미지 사이즈 조절하는 메소드****************************/
- (UIImage *)imageWithImagName:(NSString *)imageName scaledToSize:(CGSize)newSize {
    UIImage *image = [UIImage imageNamed:imageName];
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
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
