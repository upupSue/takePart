//
//  DistributionViewController.m
//  TakePart
//
//  Created by 方琼蔚 on 2017/3/16.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "DistributionViewController.h"

@interface DistributionViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation DistributionViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"配送状态";
    _tableView.backgroundColor=BGGRAY_COLOR;
    [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - tableview delegate
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPat{
    UITableViewCell *cell=[[UITableViewCell alloc]init];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
}

@end
