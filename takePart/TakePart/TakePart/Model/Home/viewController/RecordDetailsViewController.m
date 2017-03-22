//
//  RecordDetailsViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/17.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "RecordDetailsViewController.h"
#import "RecordDetailsViewCell.h"
#import "RecordViewController.h"


@interface RecordDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *_tableViewArray;
}


@property (weak, nonatomic) IBOutlet UITableView *RecordDetails;

@end

@implementation RecordDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    self.title=@"上单记录";
    
    _RecordDetails.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    UINib *nib=[UINib nibWithNibName:@"RecordDetailsViewCell" bundle:nil];
    [self.RecordDetails registerNib:nib forCellReuseIdentifier:@"RecordDetailsViewCell"];
    
    _RecordDetails.delegate=self;
    _RecordDetails.dataSource=self;
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
    return 50.*SCREEN_WIDTH/375.;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _tableViewArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RecordDetailsViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"RecordDetailsViewCell" owner:self options:nil] objectAtIndex:1];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    RecordViewController *vc=[[RecordViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
        
}



#pragma mark - private methods
-(void)loadData {
    
    _tableViewArray=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil];
    
    
}

@end
