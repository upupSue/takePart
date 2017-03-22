//
//  AirPlainViewController.m
//  TakePart
//
//  Created by 方静雯 on 2017/3/16.
//  Copyright © 2017年 方琼蔚. All rights reserved.
//

#import "AirPlainViewController.h"

@interface AirPlainViewController ()

@end

@implementation AirPlainViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        UIImage *air=[UIImage imageNamed:@"Airplane"];
        self.tabBarItem.image=air;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
