# OneWayToBuildControllerWithTabBarAndNavBar
There is one way to create any kind UIViewcontroller with TabBarController and NavigationController

//To use this class, users need to have UITabBarController as a root controller, for example,
//The ViewController is as UITabBarController
#import "ViewController.h" 
//import the class method header.
#import "UIViewController+XDLCreateTabBarAndNavBar.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //For example: creating two any kinds of ViewControllers, such as vc1 and vc2, to add these controllers into tabBarController by using the method self.viewController = @[];
     //add users' assets with image to pass the imageName.
    UIViewController * vc1 = [self loadSubViewControllerClassandName:@"XDLTest1ViewController" andtitleName:@"WeiChat" andimageName:@"tabbar_me"];
    UIViewController * vc2 = [self loadSubViewControllerClassandName:@"XDLTest2ViewController" andtitleName:@"discover" andimageName:@"tabbar_discover"];
    
    self.viewControllers = @[vc1,vc2];
}
