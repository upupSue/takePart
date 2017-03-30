//
//  LoginViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/23.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "LoginViewController.h"
#import "ForgetPasswordViewController.h"
#import "MainTabBarViewController.h"


@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *NumberText;
@property (weak, nonatomic) IBOutlet UITextField *PasswordText;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES];
}



//注册
- (IBAction)Register:(id)sender {
}

//忘记密码
- (IBAction)ForgetPassword:(id)sender {
    ForgetPasswordViewController *vc=[[ForgetPasswordViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

//学生登录
- (IBAction)LoginWithStudent:(id)sender {
    MainTabBarViewController *vc=[[MainTabBarViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

//商家登录
- (IBAction)LogInWithBusiness:(id)sender {
    MainTabBarViewController *vc=[[MainTabBarViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
