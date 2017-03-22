//
//  MainTabBarViewController.m
//  MagicBox
//
//  Created by 方琼蔚 on 2017/2/27.
//  Copyright © 2017年 DreamTouch. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "HomeTableViewController.h"
#import "MyViewController.h"
#import "DistributionViewController.h"
#import "AirPlainViewController.h"

@interface MainTabBarViewController ()<UITabBarControllerDelegate>

@end

@implementation MainTabBarViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    HomeTableViewController *HomeVC = [[HomeTableViewController alloc]init];
    UINavigationController *HomeNVC = [[UINavigationController alloc] initWithRootViewController:HomeVC];
    HomeNVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:[[UIImage imageNamed:@"HomePage"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Home"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];;
    
    DistributionViewController *dVC = [[DistributionViewController alloc] init];
    UINavigationController *dNVC = [[UINavigationController alloc] initWithRootViewController:dVC];
    dNVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:[[UIImage imageNamed:@"Use_Distribution"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Use_Distribution"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];;
    
    AirPlainViewController *apVC = [[AirPlainViewController alloc] init];
    UINavigationController *apNVC = [[UINavigationController alloc] initWithRootViewController:apVC];
    apNVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:[[UIImage imageNamed:@"Airplane"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Use_airplain"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];

    MyViewController *mVC = [[MyViewController alloc]init];
    UINavigationController *mNVC = [[UINavigationController alloc] initWithRootViewController:mVC];
    mNVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:[[UIImage imageNamed:@"Person"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Person_use"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    self.tabBar.translucent = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    [self setViewControllers:@[HomeNVC, dNVC, apNVC, mNVC]];
    [self setSelectedIndex:0];
}

-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    return YES;
}

@end
