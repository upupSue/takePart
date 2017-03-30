//
//  DistributionTableViewCell.h
//  TakePart
//
//  Created by 方琼蔚 on 17/3/23.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DistributionTableViewCell : UITableViewCell<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *ShopName;
@property (weak, nonatomic) IBOutlet UIButton *PhoneBtn;
@property (weak, nonatomic) IBOutlet UIImageView *ShopImg;
@property (weak, nonatomic) IBOutlet UILabel *SendAddressLabel;
@property (weak, nonatomic) IBOutlet UILabel *SendNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *SendNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *SendGeshuLabel;

@end
