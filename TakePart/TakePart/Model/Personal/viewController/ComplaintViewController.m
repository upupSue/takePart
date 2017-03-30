//
//  ComplaintViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/27.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "ComplaintViewController.h"

@interface ComplaintViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ShopIco;
@property (weak, nonatomic) IBOutlet UILabel *ShopName;
@property (weak, nonatomic) IBOutlet UILabel *CreditCount;
@property (weak, nonatomic) IBOutlet UILabel *UserName;
@property (weak, nonatomic) IBOutlet UILabel *UserAddress;
@property (weak, nonatomic) IBOutlet UILabel *ComplaintReason;
@property (weak, nonatomic) IBOutlet UILabel *ComplaintDate;
@property (weak, nonatomic) IBOutlet UILabel *ComplaintTime;
@property (weak, nonatomic) IBOutlet UIView *BackLine;

@end

@implementation ComplaintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"记录详情";
    
    _BackLine.layer.masksToBounds=YES;
    _BackLine.layer.cornerRadius=10.0;
    _BackLine.layer.borderWidth=1.0;
    _BackLine.layer.borderColor=LINE_COLOR.CGColor;

    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
