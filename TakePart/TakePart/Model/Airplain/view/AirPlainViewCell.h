//
//  AirPlainViewCell.h
//  TakePart
//
//  Created by 方琼蔚 on 2017/3/20.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AirPlainViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ShopName;
@property (weak, nonatomic) IBOutlet UIButton *CheckBtn;
@property (weak, nonatomic) IBOutlet UIImageView *ShopImg;
@property (weak, nonatomic) IBOutlet UILabel *ShopAddressLabel;
@property (weak, nonatomic) IBOutlet UILabel *ShopNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *ShopGeshuLabel;

@end
