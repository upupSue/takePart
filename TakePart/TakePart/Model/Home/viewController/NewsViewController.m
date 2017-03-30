//
//  NewsViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/24.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "NewsViewController.h"
#import "NewsViewCell.h"

@interface NewsViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *_tableViewArray;
}

@property (weak, nonatomic) IBOutlet UITableView *NewsView;

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    
    self.title=@"消息";
    
    self.NewsView.separatorStyle=UITableViewCellSeparatorStyleNone;
    self.NewsView.backgroundColor=BGGRAY_COLOR;
    
    UINib *nib=[UINib nibWithNibName:@"NewsViewCell" bundle:nil];
    [self.NewsView registerNib:nib forCellReuseIdentifier:@"NewsViewCell"];
    
    _NewsView.delegate=self;
    _NewsView.dataSource=self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableview delegate


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 85*SCREEN_WIDTH/375.;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _tableViewArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NewsViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsViewCell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}



#pragma mark - private methods
-(void)loadData {
    
    _tableViewArray=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil];
    
    
}

@end
