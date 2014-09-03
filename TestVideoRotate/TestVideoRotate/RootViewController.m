//
//  RootViewController.m
//  TestVideoRotate
//
//  Created by SCMac on 14-8-28.
//  Copyright (c) 2014年 devDM. All rights reserved.
//

#import "RootViewController.h"

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dismiss:(id)sender {
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
//- (NSUInteger)supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskLandscapeRight;
//}
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
//{
//    return UIInterfaceOrientationLandscapeRight;
//}
- (IBAction)henping:(id)sender {
    if(UIInterfaceOrientationIsLandscape(UIInterfaceOrientationMaskLandscapeRight)){
        
        //do some processing…
        NSLog(@"UIInterfaceOrientationMaskLandscapeRight");
        
    }else if(UIInterfaceOrientationIsPortrait(UIInterfaceOrientationMaskLandscapeLeft)){
        NSLog(@"UIInterfaceOrientationMaskLandscapeLeft");
        //do different processing…
    }
    else if(UIDeviceOrientationIsValidInterfaceOrientation(UIInterfaceOrientationMaskPortrait)){
        NSLog(@"UIInterfaceOrientationMaskPortrait");
        //do something
    }
    
}
- (IBAction)shuping:(id)sender {
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
