//
//  CustomNavigation.m
//  Test
//
//  Created by apple on 13-4-17.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "CustomNavigation.h"

@interface CustomNavigation ()

@end

@implementation CustomNavigation

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#warning 添加该方法
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return [self.topViewController shouldAutorotateToInterfaceOrientation:toInterfaceOrientation];
}

-(NSUInteger)supportedInterfaceOrientations
{
    
    return [self.topViewController supportedInterfaceOrientations];
}

- (BOOL)shouldAutorotate
{
    return self.topViewController.shouldAutorotate;
}
////- (BOOL)shouldAutorotate
////{
////    return YES;
////}
//-(NSUInteger)supportedInterfaceOrientationsx
//{
//    return [self.topViewController supportedInterfaceOrientations];
//}

@end
