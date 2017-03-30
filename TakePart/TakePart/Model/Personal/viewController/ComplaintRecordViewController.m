//
//  ComplaintRecordViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/27.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "ComplaintRecordViewController.h"
#import "ComplaintViewCell.h"
#import "ComplaintViewController.h"

@interface ComplaintRecordViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *_tableViewArray;
}

@property (weak, nonatomic) IBOutlet UITableView *ConplaintRecordView;

@end

@implementation ComplaintRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    self.title=@"投诉记录";
    
    
    self.ConplaintRecordView.separatorStyle=NO;
    UINib *nib=[UINib nibWithNibName:@"ComplaintViewCell" bundle:nil];
    [self.ConplaintRecordView registerNib:nib forCellReuseIdentifier:@"ComplaintViewCell"];
    
    self.ConplaintRecordView.delegate=self;
    self.ConplaintRecordView.dataSource=self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableview delegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.*SCREEN_WIDTH/375.;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _tableViewArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ComplaintViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ComplaintViewCell" forIndexPath:indexPath];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ComplaintViewController *vc=[[ComplaintViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];

}



#pragma mark - private methods
-(void)loadData {
    
    _tableViewArray=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil];
    
    
}


@end
