//
//  RewardViewCell.m
//  TakePart
//
//  Created by 方琼蔚 on 2017/3/17.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "RewardViewCell.h"

@implementation RewardViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)Exchage:(id)sender {
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"" message:@"兑换成功！" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alter show];
}

@end
