//
//  RewardViewCell.h
//  TakePart
//
//  Created by 方琼蔚 on 2017/3/17.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RewardViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *ExchangeBtn;
@property (weak, nonatomic) IBOutlet UIImageView *RewardImg;
@property (weak, nonatomic) IBOutlet UILabel *RewardNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *RewardIntroductLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *RewardPointLabel;

@end
