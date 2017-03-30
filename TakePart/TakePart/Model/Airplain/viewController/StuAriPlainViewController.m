//
//  StuAriPlainViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/28.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "StuAriPlainViewController.h"
#import "StuAirPlainViewCell.h"

@interface StuAriPlainViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *_tableViewArray;
}

@property (weak, nonatomic) IBOutlet UITableView *StuAirPlainView;


@end

@implementation StuAriPlainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    self.title=@"抢单";
    
    self.StuAirPlainView.backgroundColor=BGGRAY_COLOR;
    self.StuAirPlainView.separatorStyle=NO;
    
    UINib *nib=[UINib nibWithNibName:@"StuAirPlainViewCell" bundle:nil];
    [self.StuAirPlainView registerNib:nib forCellReuseIdentifier:@"StuAirPlainViewCell"];
    self.StuAirPlainView.delegate=self;
    self.StuAirPlainView.dataSource=self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableview delegate
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 125.*SCREEN_WIDTH/373.;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _tableViewArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    StuAirPlainViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"StuAirPlainViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UILabel *footLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50.*SCREEN_WIDTH/373.)];
    footLabel.text=@"如果没有抢到，请下拉刷新试试！";
    footLabel.textColor=LINE_COLOR;
    footLabel.font=[UIFont systemFontOfSize:10];
    footLabel.textAlignment=NSTextAlignmentCenter;
    footLabel.backgroundColor=[UIColor clearColor];
    return footLabel;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 50.*SCREEN_WIDTH/373.;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
}


#pragma mark - private methods
-(void)loadData {
    _tableViewArray=[NSMutableArray arrayWithObjects:@"1",@"2",nil];
}
@end
