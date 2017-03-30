//
//  AirPlainViewController.m
//  TakePart
//
//  Created by 方琼蔚 on 2017/3/16.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "AirPlainViewController.h"
#import "AirPlainViewCell.h"
#import "AddPackageViewController.h"

@interface AirPlainViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *_tableViewArray;
    int i;
    AirPlainViewCell *APCheck;
}

@property (weak, nonatomic) IBOutlet UIButton *AllCheckBtn;

@property (weak, nonatomic) IBOutlet UITableView *AirPlainView;

@end

@implementation AirPlainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    
    self.title=@"上单";
    _AirPlainView.backgroundColor=BGGRAY_COLOR;
    _AirPlainView.separatorStyle=UITableViewCellSeparatorStyleNone;
    
    UIButton *RightBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [RightBtn setFrame:CGRectMake(0, 0, 40, 40)];
    [RightBtn setTitle:@"删除" forState:UIControlStateNormal];
    UIBarButtonItem *RightItem=[[UIBarButtonItem alloc]initWithCustomView:RightBtn];
    self.navigationItem.rightBarButtonItem=RightItem;
    
    [RightBtn addTarget:self action:@selector(Delete) forControlEvents:UIControlEventTouchUpInside];
    

    
    UINib *nib=[UINib nibWithNibName:@"AirPlainViewCell" bundle:nil];
    [self.AirPlainView registerNib:nib forCellReuseIdentifier:@"AirPlainViewCell"];
  
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
    AirPlainViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"AirPlainViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIButton *AddBtn=[[UIButton alloc]initWithFrame:CGRectMake(0, 15, SCREEN_WIDTH, 125.*SCREEN_WIDTH/373.-15)];
    UIImage *image=[UIImage imageNamed:@"Add_package"];
    [AddBtn setImage:image forState:UIControlStateNormal];
    [AddBtn addTarget:self action:@selector(AddPlain)
     forControlEvents:UIControlEventTouchUpInside];
    
    UIView *TopView=[[UIView alloc]initWithFrame:CGRectMake(0, 15, SCREEN_WIDTH, 1)];
    TopView.backgroundColor=LINE_COLOR;
    UIView *ButtomView=[[UIView alloc]initWithFrame:CGRectMake(0, 125.*SCREEN_WIDTH/373.-15, SCREEN_WIDTH, 1)];
    ButtomView.backgroundColor=LINE_COLOR;
    
    [AddBtn addSubview:TopView];
    [AddBtn addSubview:ButtomView];
    return AddBtn;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 125.*SCREEN_WIDTH/373.;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
}


#pragma mark - private methods
-(void)loadData {
      _tableViewArray=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil];
}

-(void)AddPlain{
    AddPackageViewController *vc=[[AddPackageViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
}

//全选
- (IBAction)AllCheck:(id)sender {
    APCheck=[[AirPlainViewCell alloc]init];
    switch (i) {
        case 0:
            [APCheck.CheckBtn setImage:[UIImage imageNamed:@"Checked"] forState:UIControlStateNormal];
            [self.AllCheckBtn setImage:[UIImage imageNamed:@"Checked"] forState:UIControlStateNormal];
            i++;
            break;
            
        default:
             [APCheck.CheckBtn setImage:[UIImage imageNamed:@"Unchecked"] forState:UIControlStateNormal];
             [self.AllCheckBtn setImage:[UIImage imageNamed:@"Unchecked"] forState:UIControlStateNormal];
            i--;
            break;
    }
    
}

//上单
- (IBAction)AirPlain:(id)sender {
}

//删除
-(void)Delete{
    
}

@end
