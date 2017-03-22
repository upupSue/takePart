//
//  MyViewController.m
//  TakePart
//
//  Created by 方琼蔚 on 2017/3/16.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "MyViewController.h"
#import "MyCell.h"

@interface MyViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *PersonalView;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"主页";
    _PersonalView.backgroundColor=BGGRAY_COLOR;
    _PersonalView.separatorStyle=UITableViewCellSeparatorStyleNone;
    _PersonalView.delegate=self;
    _PersonalView.dataSource=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



#pragma mark - tableview delegate
//分割线对齐
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPat{
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]){
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            return 100.*SCREEN_WIDTH/375.;
            break;
            
        default:
            return 50.*SCREEN_WIDTH/375.;
            break;
    }

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

-(CGFloat)tableView:(UITableView*)tableView heightForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 0.f;
            break;
            
        default:
            return 20.f;
            break;
    }
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return 1;
            break;
            
        case 1:
            return 1;
            break;
            
        case 2:
            return 4;
            break;
            
        default:
            return 1;
            break;
    }
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UINib *nib=[UINib nibWithNibName:@"MyCell" bundle:nil];
    [self.PersonalView registerNib:nib forCellReuseIdentifier:@"MyCell"];

    MyCell *cell1 = [[[NSBundle mainBundle] loadNibNamed:@"MyCell" owner:self options:nil] objectAtIndex:0];
    cell1.selectionStyle=UITableViewCellSelectionStyleNone;
    MyCell *cell2 = [[[NSBundle mainBundle] loadNibNamed:@"MyCell" owner:self options:nil] objectAtIndex:1];
    
    UILabel *integral=[[UILabel alloc]initWithFrame:CGRectMake(cell2.frame.size.width, 0, 100, cell2.frame.size.height)];
    integral.text=@"300积分";
    integral.tintColor=BGGRAY_COLOR;
    integral.font=[UIFont fontWithName:@"" size:5];
    integral.textAlignment=NSTextAlignmentRight;
    
    switch (indexPath.section) {
        case 0:
            return cell1;
            break;
            
        case 1:
            return cell2;
            break;
            
        case 2:
                switch (indexPath.row) {
                case 0:
                    cell2.PerTitle.text=@"信用额度";
                    cell2.PerIcon.image=[UIImage imageNamed:@"Credit_limit"];
                    break;
                        
                case 1:
                    cell2.PerTitle.text=@"投诉记录";
                    cell2.PerIcon.image=[UIImage imageNamed:@"Complaint_record"];
                    break;
                        
                case 2:
                    [cell2 addSubview:integral];
                    cell2.PerTitle.text=@"邀请奖励";
                    cell2.PerIcon.image=[UIImage imageNamed:@"Invitationbonus"];
                    break;
                    
                default:
                    cell2.PerTitle.text=@"客户中心";
                    cell2.PerIcon.image=[UIImage imageNamed:@"Call_center"];
                    break;
            }
            return cell2;
            break;
            
        default:
            cell2.PerTitle.text=@"版本检测";
            cell2.PerIcon.image=[UIImage imageNamed:@"Version_decection"];
            [cell2.PerInto removeFromSuperview];
            return cell2;
            break;
    }

    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


@end
