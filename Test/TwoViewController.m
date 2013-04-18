//
//  TwoViewController.m
//  Test
//
//  Created by apple on 13-4-17.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "CustomNavigation.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{

}

- (void)videoListdetectOrientation
{
    if ([UIApplication sharedApplication].statusBarOrientation == UIDeviceOrientationLandscapeLeft ||[UIApplication sharedApplication].statusBarOrientation == UIDeviceOrientationLandscapeRight)
    {
        NSLog(@"HENG");

    }
    else
    {
        NSLog(@"SHU");
        
    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(videoListdetectOrientation) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
    self.title=@"B";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 50, 100, 50);
    [button addTarget:self action:@selector(myButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}

- (void)myButton
{
   
    ThreeViewController *three = [[ThreeViewController alloc] init];


//    CustomNavigation *nga = [CustomNavigation defu];
//    nga.viewControllers = [NSArray arrayWithObjects:three, nil];
//    UIViewController *rootController = nga;
//    self.view.window.rootViewController = rootController;
//    [self presentViewController:three animated:YES completion:^{
//        NSLog(@"123");
//    }];
    [self.navigationController pushViewController:three animated:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(NSUInteger)supportedInterfaceOrientations
{
    NSLog(@"22222");
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

-(BOOL)shouldAutorotate
{
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
