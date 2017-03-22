//
//  RecordViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/17.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "RecordViewController.h"
#import "RecordDetailsViewCell.h"

@interface RecordViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *RecordView;

@end

@implementation RecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"记录详情";
    
    _RecordView.backgroundColor=BGGRAY_COLOR;
    
    _RecordView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    UINib *nib=[UINib nibWithNibName:@"RecordDetailsViewCell" bundle:nil];
    [self.RecordView registerNib:nib forCellReuseIdentifier:@"RecordDetailsViewCell"];
    
    _RecordView.delegate=self;
    _RecordView.dataSource=self;
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
    return 230.*SCREEN_WIDTH/375.;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RecordDetailsViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"RecordDetailsViewCell" owner:self options:nil] objectAtIndex:0];
    
    return cell;
}





@end
