//
//  ComplaintJuTiViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/28.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "ComplaintJuTiViewController.h"

@interface ComplaintJuTiViewController ()
@property (weak, nonatomic) IBOutlet UIButton *AddPicBtn;
@property (weak, nonatomic) IBOutlet UIView *ComplaintView;

@end

@implementation ComplaintJuTiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"投诉";
    
    [_AddPicBtn.layer setMasksToBounds:YES];
    [_AddPicBtn.layer setCornerRadius:10.0];
    [_AddPicBtn.layer setBorderWidth:1.0];
    _AddPicBtn.layer.borderColor=LINE_COLOR.CGColor;
    
    _ComplaintView.layer.masksToBounds=YES;
    _ComplaintView.layer.cornerRadius=10.0;
    _ComplaintView.layer.borderWidth=1.0;
    _ComplaintView.layer.borderColor=LINE_COLOR.CGColor;
    
    UIButton *RightBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [RightBtn setFrame:CGRectMake(0, 0, 40, 40)];
    [RightBtn setImage:[UIImage imageNamed:@"complaint_record-1"] forState:UIControlStateNormal];
    UIBarButtonItem *RightItem=[[UIBarButtonItem alloc]initWithCustomView:RightBtn];
    self.navigationItem.rightBarButtonItem=RightItem;
    
    [RightBtn addTarget:self action:@selector(SaveComplaint
                                              ) forControlEvents:UIControlEventTouchUpInside];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//添加地点
- (IBAction)AddAddressBtn:(id)sender {
}

//添加图片
- (IBAction)AddPicture:(id)sender {
}

//保存投诉
-(void)SaveComplaint{
    
}

@end
