//
//  ThreeViewController.m
//  Test
//
//  Created by apple on 13-4-17.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "ThreeViewController.h"
#import "FFFViewController.h"
@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        [[UIDevice currentDevice] performSelector:@selector(setOrientation:)
                                       withObject:(id)UIInterfaceOrientationPortrait];
    }

}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.title=@"C";
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 100, 100)];
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview: view];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 50, 100, 50);
    [button addTarget:self action:@selector(myButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}
- (void)myButton
{
    FFFViewController *ff = [[FFFViewController alloc] init];
    [self.navigationController pushViewController:ff animated:YES];
    NSLog(@"2222222gogogog");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSUInteger)supportedInterfaceOrientations
{
    NSLog(@"C类");
    return UIInterfaceOrientationMaskPortrait;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    NSLog(@"3333222");
    return UIInterfaceOrientationPortrait;
}

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
//    NSLog(@"self.view.frame.size.width = %f",self.view.frame.size.width);
//    if (self.view.frame.size.width == 568)
//    {
//        return UIInterfaceOrientationMaskPortrait;
//    }
//    return UIInterfaceOrientationMaskPortrait;
//}

@end
