//
//  ForgetPasswordViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/23.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "ForgetPasswordViewController.h"

@interface ForgetPasswordViewController ()
@property (weak, nonatomic) IBOutlet UITextField *PhoneLabel;
@property (weak, nonatomic) IBOutlet UITextField *NewPasswordLabel;
@property (weak, nonatomic) IBOutlet UITextField *IdentifyCodeLabel;
@property (weak, nonatomic) IBOutlet UIButton *OKBtn;

@end

@implementation ForgetPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=NO;
    self.title=@"忘记密码";
    
    [self.OKBtn.layer setMasksToBounds:YES];
    [self.OKBtn.layer setBorderColor:Btn_COLOR.CGColor];
    [self.OKBtn.layer setCornerRadius:10.0];
    [self.OKBtn.layer setBorderWidth:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//发送验证码
- (IBAction)SendingBtn:(id)sender {
}


//确定
- (IBAction)OkBtn:(id)sender {
}


@end
