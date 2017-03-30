//
//  ComplaintViewCell.h
//  TakePart
//
//  Created by 方静雯 on 2017/3/27.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ComplaintViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ComplaintDate;
@property (weak, nonatomic) IBOutlet UILabel *ComplaintTime;
@property (weak, nonatomic) IBOutlet UILabel *PackageNum;
@property (weak, nonatomic) IBOutlet UILabel *ComplaintName;

@end
