//
//  AirPlainViewController.m
//  TakePart
//
//  Created by 方琼蔚 on 2017/3/16.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "AirPlainViewController.h"
#import "AirPlainViewCell.h"

@interface AirPlainViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *_tableViewArray;
}

@property (weak, nonatomic) IBOutlet UITableView *AirPlainView;

@end

@implementation AirPlainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"跑得快";
    _AirPlainView.backgroundColor=BGGRAY_COLOR;
    _tableViewArray=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - tableview delegate
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 125.*SCREEN_WIDTH/373.;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _tableViewArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UINib *nib=[UINib nibWithNibName:@"AirPlainViewCell" bundle:nil];
    [self.AirPlainView registerNib:nib forCellReuseIdentifier:@"AirPlainViewCell"];

    AirPlainViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"AirPlainViewCell" forIndexPath:indexPath];
    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
}

//分割线对齐
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPat{
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]){
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
}

#pragma mark - private methods
-(void)loadData {
}


@end
