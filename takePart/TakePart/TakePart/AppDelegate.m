//
//  AppDelegate.m
//  Logic
//
//  Created by 方琼蔚 on 16/12/14.
//  Copyright © 2016年 方琼蔚. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    MainTabBarViewController *tabBarVc = [[MainTabBarViewController alloc] init];
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor=[UIColor whiteColor];
    self.window.rootViewController = tabBarVc;
    [self.window makeKeyAndVisible];
    
    /* -------- 全局UI设置 -------- */
    //文本框通用设置
    [[UITextField appearance] setTintColor:FIRST_FONTCOLOR];
    //导航栏通用设置
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageWithColor:THEME_BGCOLOR] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc]init] ];
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:18],NSFontAttributeName,nil]];
    
    //设置自定义返回按钮图片
    [self setNaviBack];
    return YES;
}

/**
 *  设置自定义返回按钮图片
 */
- (void)setNaviBack{
    UINavigationBar * navigationBar = [UINavigationBar appearance];
    //设置返回样式图片
    UIImage *image = [UIImage imageNamed:@"arrow_left"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navigationBar.backIndicatorImage = image;
    navigationBar.backIndicatorTransitionMaskImage = image;
    UIBarButtonItem *buttonItem = [UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:@[[UINavigationBar class]]];
    UIOffset offset;
    offset.horizontal = - 500;
    offset.vertical =  - 500;
    [buttonItem setBackButtonTitlePositionAdjustment:offset forBarMetrics:UIBarMetricsDefault];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillResignActive:(UIApplication *)application {

}

- (void)applicationWillEnterForeground:(UIApplication *)application {

}

- (void)applicationDidBecomeActive:(UIApplication *)application {

}




@end
