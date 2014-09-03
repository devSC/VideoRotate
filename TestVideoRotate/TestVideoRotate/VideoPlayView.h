//
//  VideoPlayView.h
//  TestVideoRotate
//
//  Created by SCMac on 14-8-27.
//  Copyright (c) 2014年 devDM. All rights reserved.
//

#import <UIKit/UIKit.h>
#define degreesToRadians(x) (M_PI * x / 180.0f)
@interface VideoPlayView : UIView

@property (nonatomic, assign) BOOL forceRotate;

@property (nonatomic, assign) CGRect portraitFrame;
@property (nonatomic, assign) CGRect landscapeFrame;

- (void)layoutForOrientation:(UIInterfaceOrientation)interfaceOrientation;
- (void)setFrameOriginX: (CGFloat)x;
- (void)setFrameOriginY: (CGFloat)y;
@end
