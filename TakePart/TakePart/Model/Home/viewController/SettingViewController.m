//
//  SettingViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/23.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "SettingViewController.h"
#import "LoginViewController.h"

@interface SettingViewController ()

@property (weak, nonatomic) IBOutlet UIButton *GoDownBtn;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"设置";
    
    
    [self.GoDownBtn.layer setMasksToBounds:YES];
    [self.GoDownBtn.layer setBorderColor:Btn_COLOR.CGColor];
    [self.GoDownBtn.layer setCornerRadius:10.0];
    [self.GoDownBtn.layer setBorderWidth:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//退出应用
- (IBAction)GoDown:(id)sender {
    LoginViewController *vc=[[LoginViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];

}


@end
