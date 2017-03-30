//
//  CreditViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/24.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "CreditViewController.h"
#import "CreditViewCell.h"

@interface CreditViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *_tableViewArray;
}
@property (weak, nonatomic) IBOutlet UITableView *CreditView;

@end

@implementation CreditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    self.title=@"信用";
    
    self.CreditView.separatorStyle=NO;
    
    UINib *nib=[UINib nibWithNibName:@"CreditViewCell" bundle:nil];
    [self.CreditView registerNib:nib forCellReuseIdentifier:@"CreditViewCell"];
    
    _CreditView.delegate=self;
    _CreditView.dataSource=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - tableview delegate


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.*SCREEN_WIDTH/375.;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _tableViewArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"CreditViewCell" forIndexPath:indexPath];
    return cell;
}

#pragma mark - private methods
-(void)loadData {
    
    _tableViewArray=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil];
    
}



//信用账单
- (IBAction)CreditBill:(id)sender {
}

//信用
- (IBAction)Credit:(id)sender {
}

//信用守护
- (IBAction)CreditProtect:(id)sender {
}

@end
