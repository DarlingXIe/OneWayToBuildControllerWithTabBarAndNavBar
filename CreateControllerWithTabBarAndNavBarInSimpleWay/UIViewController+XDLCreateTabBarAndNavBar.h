//
//  UIViewController+XDLCreateTabBarAndNavBar.h
//  NavAndTabBar
//
//  Created by DalinXie on 16/8/2.
//  Copyright © 2016年 itcast. All rights reserved.
//
/**
 *  <#Description#> there are two selectors about creating tabBars with nivagation controller.
 *
 *  @param XDLCreateTabBarAndNavBar <#XDLCreateTabBarAndNavBar description#>
 *
 *  @return <#return value description#>
 */
#import <UIKit/UIKit.h>

@interface UIViewController (XDLCreateTabBarAndNavBar)
// if users want to build tabBar with navigationBar based on the any viewController, users can use this selector to add parameters
/**
 *  Description
 *
 *  @param UIViewControllerName description:pass the any viewControllers you created.

 *  @param tabBarName tabBarName description: setting the tabBarBame.
 *  
    @param tabBarImageName tabBarImageName description:setting the tabBarImage to pass the tabBarImageName.
 *
 *  @return return value description : return the UIViewController.
 */

-(UIViewController*)loadSubViewControllerClassandName:(NSString * )UIViewControllerName andtitleName:(NSString *) tabBarName andimageName:(NSString *) tabBarImageName;
// load controllerview from the stroyboard.
-(UIViewController*)loadSubViewControllerWithStoryBoardName:(NSString * )UIViewControllerName andtitileName:(NSString *) tabBarName andImageName:(NSString *) tabBarImageName;
//build the navigationController.
- (UIViewController*)loadTabBarItemAndNavigationControllerWithRootViewControlller:(UIViewController*)viewController andTitile:(NSString*)title andImageName:(NSString*)imageName;
@end
