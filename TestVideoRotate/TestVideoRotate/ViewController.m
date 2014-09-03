//
//  ViewController.m
//  TestVideoRotate
//
//  Created by SCMac on 14-8-27.
//  Copyright (c) 2014年 devDM. All rights reserved.
//

#import "ViewController.h"
#import "VideoPlayView.h"
#define degreesToRadians(x) (M_PI * x / 180.0f)

@interface ViewController ()
@property (weak, nonatomic) IBOutlet VideoPlayView *view;


@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [UIApplication sharedApplication].idleTimerDisabled = YES;
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    [[UIApplication sharedApplication] setStatusBarOrientation:UIDeviceOrientationLandscapeRight animated:YES];
//    
//    //（获取当前电池条动画改变的时间）
//    CGFloat duration = [UIApplication sharedApplication].statusBarOrientationAnimationDuration;
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:duration];
//    //在这里设置view.transform需要匹配的旋转角度的大小就可以了。
//    [UIView commitAnimations];
    
}
- (void)layoutNavigationAndStatusBarForOrientation:(UIInterfaceOrientation)interfaceOrientation {
    [[UIApplication sharedApplication] setStatusBarOrientation:interfaceOrientation animated:NO];
}


- (IBAction)shuping:(id)sender {
    [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationPortrait animated:YES];
    
    //（获取当前电池条动画改变的时间）
    CGFloat duration = [UIApplication sharedApplication].statusBarOrientationAnimationDuration;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:duration];
    //在这里设置view.transform需要匹配的旋转角度的大小就可以了。
    self.view.transform = CGAffineTransformIdentity;
    self.view.frame = CGRectMake(0, 0, 320, 568);
    [UIView commitAnimations];
//    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
//        SEL selector = NSSelectorFromString(@"setOrientation:");
//        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
//        [invocation setSelector:selector];
//        [invocation setTarget:[UIDevice currentDevice]];
//        int val = UIDeviceOrientationPortrait;
//        [invocation setArgument:&val atIndex:2];
//        [invocation invoke];
//    }
}
- (IBAction)hengping:(id)sender {
    //1
//    [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationLandscapeRight animated:YES];
//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
//    //（获取当前电池条动画改变的时间）
//    CGFloat duration = [UIApplication sharedApplication].statusBarOrientationAnimationDuration;
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:duration];
//    //在这里设置view.transform需要匹配的旋转角度的大小就可以了。
//    self.view.transform = CGAffineTransformMakeRotation(M_PI/2);
//    self.view.frame = CGRectMake(0, 0, 568, 320);
//    [UIView commitAnimations];
    
    //2
//    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
//        SEL selector = NSSelectorFromString(@"setOrientation:");
//        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
//        [invocation setSelector:selector];
//        [invocation setTarget:[UIDevice currentDevice]];
//        int val = UIInterfaceOrientationLandscapeRight;
//        [invocation setArgument:&val atIndex:2];
//        [invocation invoke];
//    }
    
    //3
//    if (!self.forceRotate) {
//        return;
//    }
//    if ([self.delegate respondsToSelector:@selector(videoPlayer:willChangeOrientationTo:)]) {
//        [self.delegate videoPlayer:self willChangeOrientationTo:deviceOrientation];
//    }
    CGRect bounds = [[UIScreen mainScreen] bounds];
    self.portraitFrame = CGRectMake(0, 0, MIN(bounds.size.width, bounds.size.height), MAX(bounds.size.width, bounds.size.height));
    self.landscapeFrame = CGRectMake(0, 0, MAX(bounds.size.width, bounds.size.height), MIN(bounds.size.width, bounds.size.height));
    
    UIInterfaceOrientation deviceOrientation = UIInterfaceOrientationLandscapeRight;
    CGFloat degrees = [self degreesForOrientation:deviceOrientation];
    __weak __typeof__(self) weakSelf = self;
    UIInterfaceOrientation lastOrientation = self.visibleInterfaceOrientation;
    self.visibleInterfaceOrientation = deviceOrientation;
    [UIView animateWithDuration:0.3f animations:^{
        CGRect bounds = [[UIScreen mainScreen] bounds];
        CGRect parentBounds;
        CGRect viewBoutnds;
        if (UIInterfaceOrientationIsLandscape(deviceOrientation)) {
            viewBoutnds = CGRectMake(0, 0, CGRectGetWidth(self.landscapeFrame), CGRectGetHeight(self.landscapeFrame));
            parentBounds = CGRectMake(0, 0, CGRectGetHeight(bounds), CGRectGetWidth(bounds));
        } else {
            viewBoutnds = CGRectMake(0, 0, CGRectGetWidth(self.portraitFrame), CGRectGetHeight(self.portraitFrame));
            parentBounds = CGRectMake(0, 0, CGRectGetWidth(bounds), CGRectGetHeight(bounds));
        }
        
        weakSelf.view.superview.transform = CGAffineTransformMakeRotation(degreesToRadians(degrees));
        weakSelf.view.superview.bounds = parentBounds;
//        [weakSelf.view.superview setFrameOriginX:0.0f];
//        [weakSelf.view.superview setFrameOriginY:0.0f];
        
        CGRect wvFrame = weakSelf.view.superview.superview.frame;
        if (wvFrame.origin.y > 0) {
            wvFrame.size.height = CGRectGetHeight(bounds) ;
            wvFrame.origin.y = 0;
            weakSelf.view.superview.superview.frame = wvFrame;
        }
        
        weakSelf.view.bounds = viewBoutnds;
//        [weakSelf.view setFrameOriginX:0.0f];
//        [weakSelf.view setFrameOriginY:0.0f];
//        [weakSelf.view layoutForOrientation:deviceOrientation];
        
    } completion:^(BOOL finished) {
//        if ([self.delegate respondsToSelector:@selector(videoPlayer:didChangeOrientationFrom:)]) {
//            [self.delegate videoPlayer:self didChangeOrientationFrom:lastOrientation];
//        }
    }];
    
    [[UIApplication sharedApplication] setStatusBarOrientation:self.visibleInterfaceOrientation animated:YES];
//    [self updateCaptionView:self.view.captionBottomView caption:self.captionBottom playerView:self.view];
//    [self updateCaptionView:self.view.captionTopView caption:self.captionTop playerView:self.view];
//    self.view.fullscreenButton.selected = self.isFullScreen = UIInterfaceOrientationIsLandscape(deviceOrientation);
    
}
- (CGFloat)degreesForOrientation:(UIInterfaceOrientation)deviceOrientation {
    switch (deviceOrientation) {
        case UIInterfaceOrientationPortrait:
            return 0;
            break;
        case UIInterfaceOrientationLandscapeRight:
            return 90;
            break;
        case UIInterfaceOrientationLandscapeLeft:
            return -90;
            break;
        case UIInterfaceOrientationPortraitUpsideDown:
            return 180;
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
