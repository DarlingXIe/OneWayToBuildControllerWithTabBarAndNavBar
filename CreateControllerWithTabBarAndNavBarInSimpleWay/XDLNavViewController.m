//
//  XDLNavViewController.m
//  NavAndTabBar
//
//  Created by DalinXie on 16/7/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "XDLNavViewController.h"
#import "UIColor+Addition.h"
@interface XDLNavViewController ()

@end

@implementation XDLNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupNav];
}

-(void)setupNav{
    /**
     Description setting the navigation Bar color
     - returns: <#return value description#>
     */
    [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
   
    [self.navigationBar setShadowImage:[[UIImage alloc] init]];
    // setting the navigationBar with TintColor with default color like
    // black color;
    [self.navigationBar setBarTintColor:[UIColor colorWithHex:0x3a3a3a]];

    self.navigationBar.translucent = NO;
    // setting the navigationBar Textcolor with whiteColor;
    [self.navigationBar setTitleTextAttributes:@{
                                                NSForegroundColorAttributeName:[UIColor whiteColor]}];

}

-(UIStatusBarStyle) preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
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
