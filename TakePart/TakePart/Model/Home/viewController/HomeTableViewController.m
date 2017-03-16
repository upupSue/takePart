//
//  HomeTableViewController.m
//  Logic
//
//  Created by 方琼蔚 on 16/12/10.
//  Copyright © 2016年 方琼蔚. All rights reserved.
//

#import "HomeTableViewController.h"
#import "UIImageView+WebCache.h"


static NSString *cellIdentifier = @"homeTableViewCell";
static NSString *groupcellIdentifier = @"groupTableViewCell";

@interface HomeTableViewController ()<UITextFieldDelegate>{
    NSMutableArray *noteArray;
    NSMutableArray *fileArray;
    NSMutableArray *colorArray;
    NSMutableArray *imageList;

    BOOL needReload;
    NSString *searchWord;
}

@property (weak, nonatomic) IBOutlet UIView *centerView;
@property (weak, nonatomic) IBOutlet UIView *leftMenu;
@property (weak, nonatomic) IBOutlet UIButton *youradress;
@property (weak, nonatomic) IBOutlet UIButton *sendadress;
@property (weak, nonatomic) IBOutlet UIButton *mymenu;
@property (weak, nonatomic) IBOutlet UIButton *quit;

@end


@implementation HomeTableViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        UIImage *home=[UIImage imageNamed:@"Home"];
        self.tabBarItem.image=home;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    needReload = YES;
    
    [_youradress.layer setBorderColor:GRAY_COLOR.CGColor];
    [_youradress.layer setBorderWidth:1];
    [_youradress.layer setMasksToBounds:YES];
    
    [_sendadress.layer setBorderColor:GRAY_COLOR.CGColor];
    [_sendadress.layer setBorderWidth:1];
    [_sendadress.layer setMasksToBounds:YES];
    
    [_mymenu.layer setBorderColor:GRAY_COLOR.CGColor];
    [_mymenu.layer setBorderWidth:1];
    [_mymenu.layer setMasksToBounds:YES];
    
  

}

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - 添加笔记

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{

}

#pragma mark - 显示侧边栏

- (IBAction)moveToRightSide:(id)sender {
    [self animateHomeViewToSide:CGRectMake(300,0,SCREEN_WIDTH,SCREEN_HEIGHT) menu:_leftMenu rect:CGRectMake(0, 0, 300, SCREEN_HEIGHT)];
}

- (void)animateHomeViewToSide:(CGRect)newViewRect menu:(UIView *)menu rect:(CGRect)viewrect{
    [UIView animateWithDuration:0.2
                     animations:^{
                         _centerView.frame = newViewRect;
                         menu.frame=viewrect;
                     }
                     completion:^(BOOL finished){
                         UIControl *overView = [[UIControl alloc] init];
                         overView.tag = 10086;
                         overView.backgroundColor = [UIColor clearColor];//放置一个透明的View在Home最上方
                         overView.frame = _centerView.frame;
                         [overView addTarget:self action:@selector(restoreViewLocation) forControlEvents:UIControlEventTouchDown];
                         [[[UIApplication sharedApplication] keyWindow] addSubview:overView];
                     }];
}

- (void)restoreViewLocation{
    [UIView animateWithDuration:0.3
                     animations:^{
                         _centerView.frame = CGRectMake(0,0,SCREEN_WIDTH,SCREEN_HEIGHT);
                         _leftMenu.frame=CGRectMake(-300, 0,300,SCREEN_HEIGHT);
                     }
                     completion:^(BOOL finished){
                         UIControl *overView = (UIControl *)[[[UIApplication sharedApplication] keyWindow] viewWithTag:10086];
                         [overView removeFromSuperview];
                     }];
}


- (IBAction)setEdit:(id)sender {
}

- (IBAction)setCommon:(id)sender {
}

- (IBAction)importAndExport:(id)sender {
}


-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
}

-(void)addGroup{
    
}




@end
