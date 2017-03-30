//
//  StuAirPlainViewCell.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/28.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "StuAirPlainViewCell.h"

@implementation StuAirPlainViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)RemindMe:(id)sender {
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"" message:@"提醒成功！" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alter show];
    

}

@end
