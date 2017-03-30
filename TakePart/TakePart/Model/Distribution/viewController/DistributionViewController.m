//
//  DistributionViewController.m
//  TakePart
//
//  Created by 方琼蔚 on 2017/3/16.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "DistributionViewController.h"
#import "DistributionTableViewCell.h"

@interface DistributionViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *_tableViewArray;

}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DistributionViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    self.title=@"配送状态";
    
      _tableView.backgroundColor=BGGRAY_COLOR;
    [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    
    UINib *nib=[UINib nibWithNibName:@"DistributionTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"DistributionTableViewCell"];

    
    _tableView.delegate=self;
    _tableView.dataSource=self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - tableview delegate


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 118*SCREEN_WIDTH/375.;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _tableViewArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DistributionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DistributionTableViewCell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone; 
    return cell;
}


#pragma mark - private methods
-(void)loadData {
    
    _tableViewArray=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil];
    
    
}

@end
