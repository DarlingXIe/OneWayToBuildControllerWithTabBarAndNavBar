//
//  UIViewController+XDLCreateTabBarAndNavBar.m
//  NavAndTabBar
//
//  Created by DalinXie on 16/8/2.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "UIViewController+XDLCreateTabBarAndNavBar.h"
#import "XDLNavViewController.h"
@implementation UIViewController (XDLCreateTabBarAndNavBar)
/**
 *  <#Description#> One way from ViewController you created.
 *
 *  @param UIViewControllerName <#UIViewControllerName description#>
 *  @param tabBarName           <#tabBarName description#>
 *  @param tabBarImageName      <#tabBarImageName description#>
 *
 *  @return <#return value description#>
 */
-(UIViewController*)loadSubViewControllerClassandName:(NSString * )UIViewControllerName andtitleName:(NSString *) tabBarName andimageName:(NSString *) tabBarImageName{
    
    Class cls = NSClassFromString(UIViewControllerName);
    UIViewController * vc = [[cls alloc] init];
    
    return [self loadTabBarItemAndNavigationControllerWithRootViewControlller:vc andTitile:tabBarName andImageName:tabBarImageName];

    
}
/**
 *  <#Description#> Another way from StroyBoardName:
 *
 *  @param storyBoardName  <#storyBoardName description#>
 *  @param tabBarName      <#tabBarName description#>
 *  @param tabBarImageName <#tabBarImageName description#>
 *
 *  @return <#return value description#>
 */
-(UIViewController*)loadSubViewControllerWithStoryBoardName:(NSString * )storyBoardName andtitileName:(NSString *) tabBarName andImageName:(NSString *) tabBarImageName{
    // 获取sb对象 get the object from the stroyboard
    UIStoryboard* sb = [UIStoryboard storyboardWithName:storyBoardName bundle:nil];
    // 获取箭头所指向的控制器 setting the instantiateInitialViewController with vc.
    UIViewController* vc = sb.instantiateInitialViewController;
    
    return [self loadTabBarItemAndNavigationControllerWithRootViewControlller:vc andTitile:tabBarName andImageName:tabBarImageName];

}
- (UIViewController*)loadTabBarItemAndNavigationControllerWithRootViewControlller:(UIViewController*)viewController andTitile:(NSString*)title andImageName:(NSString*)imageName
{
    // 标题 setting the title
    viewController.title = title;
    
    // 图片 setting tabBarItem image
    viewController.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 选中图片 select the image with selected condition
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:[imageName stringByAppendingString:@"HL"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 创建nav create the nav controller
    XDLNavViewController* nav = [[XDLNavViewController alloc] initWithRootViewController:viewController];
    return nav;
    
}


@end
