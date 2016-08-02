//
//  ViewController.m
//  frameTest
//
//  Created by DalinXie on 16/8/2.
//  Copyright © 2016年 itcast. All rights reserved.
//
/**
 *  <#Description#> create the UItabBarController to add two controllers by your UIViewControllers.
     There are examples to illustrate how to use this gategroy to bulid the frame with tabBarAndNavBar controller.
 *
 *  @param void <#void description#>
 *
 *  @return <#return value description#>
 */
#import "ViewController.h"
#import "UIViewController+XDLCreateTabBarAndNavBar.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //For example: creating two UIViewControllers vc1 and vc2 to add these controllers into tabBarController by using the method self.viewController = @[];
     //add users' assets with image to pass the imageName.
    UIViewController * vc1 = [self loadSubViewControllerClassandName:@"XDLTest1ViewController" andtitleName:@"WeiChat" andimageName:@"tabbar_me"];
    UIViewController * vc2 = [self loadSubViewControllerClassandName:@"XDLTest2ViewController" andtitleName:@"discover" andimageName:@"tabbar_discover"];
    
    self.viewControllers = @[vc1,vc2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
