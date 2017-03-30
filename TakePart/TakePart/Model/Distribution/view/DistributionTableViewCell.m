//
//  DistributionTableViewCell.m
//  TakePart
//
//  Created by 方琼蔚 on 17/3/23.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "DistributionTableViewCell.h"
#import "DistributionViewController.h"

@implementation DistributionTableViewCell{
    UIWebView *webView;
    DistributionViewController *vc;
}


- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (IBAction)CaiiPhone:(id)sender {
    
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"" message:@"确定拨打？" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alter show];

    
    NSMutableString *str=[[NSMutableString alloc] initWithFormat:@"tel:%@",@"186xxxx6979"];
    NSLog(@"str======%@",str);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
    
    
    
}


@end
