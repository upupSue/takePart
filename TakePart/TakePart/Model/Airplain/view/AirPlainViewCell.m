
//
//  AirPlainViewCell.m
//  TakePart
//
//  Created by 方琼蔚 on 2017/3/20.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "AirPlainViewCell.h"

@implementation AirPlainViewCell{
    int i;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)CheckBtn:(id)sender {
    switch (i) {
        case 0:
            [self.CheckBtn setImage:[UIImage imageNamed:@"Checked"] forState:UIControlStateNormal];
            i++;
            break;
            
        default:
            [self.CheckBtn setImage:[UIImage imageNamed:@"Unchecked"] forState:UIControlStateNormal];
            i--;
            break;
    }
    
}

@end
