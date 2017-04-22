//
//  HomeTableViewController.m
//  Logic
//
//  Created by 方琼蔚 on 16/12/10.
//  Copyright © 2016年 方琼蔚. All rights reserved.
//

#import "HomeTableViewController.h"
#import "UIImageView+WebCache.h"
#import "NewsViewController.h"
#import "PaymentMethodViewController.h"
#import "RecordDetailsViewController.h"
#import "RewardViewController.h"
#import "SettingViewController.h"
#import "LoginViewController.h"
#import "CreditViewController.h"
#import "ComplaintJuTiViewController.h"


static NSString *cellIdentifier = @"homeTableViewCell";
static NSString *groupcellIdentifier = @"groupTableViewCell";

@interface HomeTableViewController ()<UITextFieldDelegate,MAMapViewDelegate,AMapLocationManagerDelegate>{
    NSMutableArray *noteArray;
    NSMutableArray *fileArray;
    NSMutableArray *colorArray;
    NSMutableArray *imageList;

    BOOL needReload;
    NSString *searchWord;
    AMapLocationManager *_manager;
    
    float lan;
    float let;
    MAMapView *_mapView;
}

@property (weak, nonatomic) IBOutlet UIView *centerView;
@property (weak, nonatomic) IBOutlet UIView *leftMenu;
@property (weak, nonatomic) IBOutlet UIButton *youradress;
@property (weak, nonatomic) IBOutlet UIButton *sendadress;
@property (weak, nonatomic) IBOutlet UIButton *mymenu;
//@property (weak, nonatomic) IBOutlet MAMapView *mapView;
@property (weak, nonatomic) IBOutlet UIView *mymap;

@property (weak, nonatomic) IBOutlet UILabel *UserName;

@end


@implementation HomeTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    ///初始化地图
    [AMapServices sharedServices].apiKey =@"fd403e58bed137d2adabf354aa262db1";

     [AMapServices sharedServices].enableHTTPS = YES;
    
    _mapView.delegate=self;
    _mapView.showsUserLocation=YES;
    _mapView.zoomEnabled = YES;//缩放手势
    [_mapView setZoomLevel:19 animated:YES];//地图的缩放级别
    _mapView.scrollEnabled = YES;
    _mapView=[[MAMapView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(_mymap.bounds), CGRectGetHeight(_mymap.bounds))];
    [_mymap addSubview:_mapView];

//    [self YourAddress];
    
    [_youradress.layer setBorderColor:GRAY_COLOR.CGColor];
    [_youradress.layer setBorderWidth:1];
    [_youradress.layer setMasksToBounds:YES];
    
    [_sendadress.layer setBorderColor:GRAY_COLOR.CGColor];
    [_sendadress.layer setBorderWidth:1];
    [_sendadress.layer setMasksToBounds:YES];
    
    [_mymenu.layer setBorderColor:GRAY_COLOR.CGColor];
    [_mymenu.layer setBorderWidth:1];
    [_mymenu.layer setMasksToBounds:YES];
    
    _UserName.userInteractionEnabled=YES;
    UITapGestureRecognizer *labelTapGestureRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(labelTouchUpInside:)];
    
    [_UserName addGestureRecognizer:labelTapGestureRecognizer];
    
}




-(void) labelTouchUpInside:(UITapGestureRecognizer *)recognizer{
    LoginViewController *vc=[[LoginViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
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

//开始定位
- (IBAction)YourAddress:(id)sender {
   
//    [self YourAddress];
}

-(void)amapLocationManager:(AMapLocationManager *)manager didUpdateLocation:(CLLocation *)location
{
    NSLog(@"经纬度值~~~%f---%f",location.coordinate.longitude,location.coordinate.latitude);
    
    _mapView.centerCoordinate=CLLocationCoordinate2DMake(location.coordinate.longitude, location.coordinate.latitude);

    
    MAPointAnnotation * pointAnnotation = [[MAPointAnnotation alloc]init];
    //设置大头针需要标记的位置
    pointAnnotation.coordinate = CLLocationCoordinate2DMake(location.coordinate.longitude, location.coordinate.latitude);
    //设置标题
    pointAnnotation.title = @"";
    //设置副标题
    pointAnnotation.subtitle = @"";
    [_mapView addAnnotation:pointAnnotation];

    [_manager stopUpdatingLocation];

}

-(void)YourAddress{
    [AMapServices sharedServices].apiKey = @"fd403e58bed137d2adabf354aa262db1";
    //初始化定位
    _manager = [[AMapLocationManager alloc]init];
    //设置代理
    _manager.delegate = self;
    //开启定位
    [_manager startUpdatingLocation];

}

//消息中心
- (IBAction)moveToLeftSide:(id)sender{
    NewsViewController *vc=[[NewsViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];

}

//付款方式
- (IBAction)PayStyle:(id)sender {
    PaymentMethodViewController *vc=[[PaymentMethodViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
}

//我的信用
- (IBAction)Credit:(id)sender {
    CreditViewController *vc=[[CreditViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
}

//上单记录
- (IBAction)Record:(id)sender {
    RecordDetailsViewController *vc=[[RecordDetailsViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
}

//邀请奖励
- (IBAction)Invitationbonus:(id)sender {
    
}


//奖励
- (IBAction)Reward:(id)sender {
    RewardViewController *vc=[[RewardViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
}

//设置
- (IBAction)Setting:(id)sender {
    SettingViewController *vc=[[SettingViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
}

//关于
- (IBAction)About:(id)sender {
    ComplaintJuTiViewController *vc=[[ComplaintJuTiViewController alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];

}


#pragma mark - 设置大头针的代理方法
-(MAAnnotationView *)mapView:(MAMapView *)mapView viewForAnnotation:(id<MAAnnotation>)annotation
{
    /*
     1.用系统的大头针样式
     大头针也涉及到复用，它的复用跟UITableViewCell的复用机制一样
     面向对象语言的特性：封装，继承，多态（父类的指针可以指向子类的对象）
     MAPinAnnotationView * pinAnotationView = (MAPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"mapView"];
     判断复用池中是否有可用的对象，如果没有则创建
     if (!pinAnotationView) {
     pinAnotationView = [[MAPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"mapView"];
     }
     设置气泡可以显示
     pinAnotationView.canShowCallout = YES;
     设置大头针降落的动画
     pinAnotationView.animatesDrop = YES;
     设置大头针的颜色
     pinAnotationView.pinColor = MAPinAnnotationColorPurple;
     设置大头针是否可以拖拽
     pinAnotationView.draggable = YES;
     return pinAnotationView;
     */
    
    
    //2.使用自定义的大头针样式
    MAAnnotationView * annotationView = [mapView dequeueReusableAnnotationViewWithIdentifier:@"mapView"];
    if (!annotationView) {
        annotationView = [[MAAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"mapView"];
    }
    
    //设置大头针的样式为一张图片
    annotationView.image = [UIImage imageNamed:@"pig1"];
    //让气泡显示
    annotationView.canShowCallout = YES;
    //设置是否拖拽
    annotationView.draggable = YES;
    return annotationView;
}

@end
