//
//  AddPackageViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/27.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "AddPackageViewController.h"

@interface AddPackageViewController ()
@property (weak, nonatomic) IBOutlet UILabel *ShopNameLab;
@property (weak, nonatomic) IBOutlet UITextField *PersonAddressText;
@property (weak, nonatomic) IBOutlet UITextField *FourNumText;
@property (weak, nonatomic) IBOutlet UIButton *OKBtn;


@end

@implementation AddPackageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"添加包裹";
    
    [self.OKBtn.layer setMasksToBounds:YES];
    [self.OKBtn.layer setBorderColor:Btn_COLOR.CGColor];
    [self.OKBtn.layer setCornerRadius:10.0];
    [self.OKBtn.layer setBorderWidth:1.0];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//确认
- (IBAction)OkBtn:(id)sender {
}


@end
