//
//  RootViewController.m
//  Test
//
//  Created by apple on 13-4-17.
//  Copyright (c) 2013年 apple. All rights reserved.
//





/*
自定义一个UINavigationController 分类（Categroy）
在这个类中实现这个方法
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSUInteger)supportedInterfaceOrientations{
    return [self.topViewController supportedInterfaceOrientations];
}

- (BOOL)shouldAutorotate
{
    return YES;
}
 
********在只需要竖屏的Controller里添加*************************************************************
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
 {
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 
 -(BOOL)shouldAutorotate
 {
 return NO;
 }
 
 -(NSUInteger)supportedInterfaceOrientations
 {
 return UIInterfaceOrientationMaskPortrait;
 }
********在需要横竖屏都支持的Controller里添加********************************************************
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
 {
 return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
 }
 
 -(NSUInteger)supportedInterfaceOrientations
 {
 return UIInterfaceOrientationMaskAllButUpsideDown;
 }
 
 -(BOOL)shouldAutorotate
 {
 return YES;
 }
*/


#import "RootViewController.h"
#import "TwoViewController.h"
#import "CustomNavigation.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"A";
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(200, 200, 100, 50);
    [button addTarget:self action:@selector(myButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)myButton
{
    TwoViewController *two = [[TwoViewController alloc] init];
//    [self.navigationController pushViewController:two animated:YES];
    
//    [self presentViewController:rootController animated:YES completion:^{
    
    [self.navigationController pushViewController:two animated:YES];
//    }];

//    [self presentViewController:two animated:YES completion:^{
//        NSLog(@"123");
//    }];
}
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
}
-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
//{
//    return UIInterfaceOrientationPortrait;
//}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(BOOL)shouldAutorotate
{
    return YES;
}
//
//-(NSUInteger)supportedInterfaceOrientations
//{
//    return UIInterfaceOrientationMaskPortrait;
//}

@end
