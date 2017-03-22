//
//  RewardViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/17.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "RewardViewController.h"
#import "RewardViewCell.h"

@interface RewardViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *_tableViewArray;
}

@property (weak, nonatomic) IBOutlet UITableView *RewardView;
@end

@implementation RewardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
    self.title=@"奖励";
    
    
    _RewardView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    

    
    UINib *nib=[UINib nibWithNibName:@"RewardViewCell" bundle:nil];
    [self.RewardView registerNib:nib forCellReuseIdentifier:@"RewardViewCell"];
    
    _RewardView.delegate=self;
    _RewardView.dataSource=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return 77.*SCREEN_WIDTH/373.;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _tableViewArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"RewardViewCell" forIndexPath:indexPath];
    return cell;
}

#pragma mark - private methods
-(void)loadData {
    
    _tableViewArray=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil];
  
    
    
}
@end
