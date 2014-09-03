//
//  VideoPlayView.m
//  TestVideoRotate
//
//  Created by SCMac on 14-8-27.
//  Copyright (c) 2014年 devDM. All rights reserved.
//

#import "VideoPlayView.h"

@implementation VideoPlayView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
- (void)layoutForOrientation:(UIInterfaceOrientation)interfaceOrientation {
    if (UIInterfaceOrientationIsPortrait(interfaceOrientation)) {
//        self.topControlOverlay.hidden = YES;
//        self.topPortraitControlOverlay.hidden = NO;
//        
//        [self.buttonPlaceHolderView setFrameOriginY:PADDING/2];
//        self.buttonPlaceHolderView.hidden = YES;
//        
//        self.captionButton.hidden = YES;
//        self.videoQualityButton.hidden = YES;
//        
//        [self.bigPlayButton setFrameOriginY:CGRectGetMinY(self.bottomControlOverlay.frame)/2 - CGRectGetHeight(self.bigPlayButton.frame)/2];
//        
//        for (UIView *control in self.portraitControls) {
//            control.hidden = self.isControlsHidden;
//        }
//        for (UIView *control in self.landscapeControls) {
//            control.hidden = YES;
//        }
        
    } else {
//        [self.topControlOverlay setFrameOriginY:0.0f];
//        self.topControlOverlay.hidden = NO;
//        self.topPortraitControlOverlay.hidden = YES;
//        
//        [self.buttonPlaceHolderView setFrameOriginY:PADDING/2 + CGRectGetMaxY(self.topControlOverlay.frame)];
//        self.buttonPlaceHolderView.hidden = NO;
//        
//        self.captionButton.hidden = NO;
//        self.videoQualityButton.hidden = NO;
//        
//        [self.bigPlayButton setFrameOriginY:(CGRectGetMinY(self.bottomControlOverlay.frame) - CGRectGetMaxY(self.topControlOverlay.frame))/2 + CGRectGetMaxY(self.topControlOverlay.frame) - CGRectGetHeight(self.bigPlayButton.frame)/2];
//        
//        for (UIView *control in self.portraitControls) {
//            control.hidden = YES;
//        }
//        for (UIView *control in self.landscapeControls) {
//            control.hidden = self.isControlsHidden;
//        }
    }
    
    [self layoutTopControls];
    [self layoutSliderForOrientation:interfaceOrientation];
}
- (void)layoutTopControls {
    
//    CGFloat rightMargin = CGRectGetMaxX(self.topControlOverlay.frame);
//    for (UIView* button in self.topControlOverlay.subviews) {
//        if ([button isKindOfClass:[UIButton class]] && button != self.doneButton && !button.hidden) {
//            rightMargin = MIN(CGRectGetMinX(button.frame), rightMargin);
//        }
//    }
//    
//    [self.titleLabel setFrameWidth:rightMargin - CGRectGetMinX(self.titleLabel.frame) - 20];
}
- (void)layoutSliderForOrientation:(UIInterfaceOrientation)interfaceOrientation {
    //  if (UIInterfaceOrientationIsPortrait(interfaceOrientation)) {
    //    [self.totalTimeLabel setFrameOriginX:CGRectGetMinX(self.fullscreenButton.frame) - self.totalTimeLabel.frame.size.width];
    //  } else {
    //    [self.totalTimeLabel setFrameOriginX:CGRectGetMinX(self.captionButton.frame) - self.totalTimeLabel.frame.size.width - PADDING];
    //  }
//    
//    CGFloat bottomControlsWidth = self.bottomControlOverlay.frame.size.width;
//    CGFloat bottomControlsHeight = self.bottomControlOverlay.frame.size.height;
//    
//    CGFloat leftOffset = 0.0f;
//    CGFloat rightOffset = bottomControlsWidth;
//    
//    // Play Button
//    if (!self.playButton.hidden) {
//        [self.playButton setFrameOriginX:leftOffset + 2];
//        [self.playButton setFrameOriginY:(bottomControlsHeight - self.playButton.frame.size.height) / 2];
//        leftOffset = CGRectGetMaxX(self.playButton.frame);
//    }
//    
//    // Current Time Label
//    if (!self.currentTimeLabel.hidden) {
//        [self.currentTimeLabel setFrameOriginX:MAX(leftOffset - 2, 0)];
//        [self.currentTimeLabel setFrameOriginY:(bottomControlsHeight - self.currentTimeLabel.frame.size.height)];
//        leftOffset = CGRectGetMaxX(self.currentTimeLabel.frame);
//    }
//    
//    // Full Screen Button
//    if (!self.fullscreenButton.hidden) {
//        [self.fullscreenButton setFrameOriginX:rightOffset - 4 - self.fullscreenButton.frame.size.width];
//        [self.fullscreenButton setFrameOriginY:(bottomControlsHeight - self.fullscreenButton.frame.size.height) / 2];
//        rightOffset = CGRectGetMinX(self.fullscreenButton.frame);
//    }
//    
//    // Video Quality Button
//    if (!self.videoQualityButton.hidden) {
//        [self.videoQualityButton setFrameOriginX:rightOffset - 2 - self.videoQualityButton.frame.size.width];
//        [self.videoQualityButton setFrameOriginY:(bottomControlsHeight - self.videoQualityButton.frame.size.height) / 2];
//        rightOffset = CGRectGetMinX(self.videoQualityButton.frame);
//    }
//    
//    // Captions Button
//    if (!self.captionButton.hidden) {
//        [self.captionButton setFrameOriginX:rightOffset - 4 - self.captionButton.frame.size.width];
//        [self.captionButton setFrameOriginY:(bottomControlsHeight - self.captionButton.frame.size.height) / 2];
//        rightOffset = CGRectGetMinX(self.captionButton.frame);
//    }
//    
//    // Total Time Label
//    if (!self.totalTimeLabel.hidden) {
//        [self.totalTimeLabel setFrameOriginX:rightOffset - 2 - self.totalTimeLabel.frame.size.width];
//        [self.totalTimeLabel setFrameOriginY:(bottomControlsHeight - self.captionButton.frame.size.height) / 2];
//        rightOffset = CGRectGetMinX(self.totalTimeLabel.frame);
//    }
//    
//    // Scrubber
//    if (!self.scrubber.hidden) {
//        [self.scrubber setFrameOriginX:leftOffset + 4];
//        [self.scrubber setFrameWidth:self.totalTimeLabel.frame.origin.x - self.scrubber.frame.origin.x - 4];
//        [self.scrubber setFrameOriginY:(bottomControlsHeight - self.scrubber.frame.size.height) / 2];
//    }
}
//- (void)setFrameOriginX: (CGFloat)x
//{
//
//}
//- (void)performOrientationChange:(UIInterfaceOrientation)deviceOrientation {
//    CGRect bounds = [[UIScreen mainScreen] bounds];
//    
//    self.portraitFrame = CGRectMake(0, 0, MIN(bounds.size.width, bounds.size.height), MAX(bounds.size.width, bounds.size.height));
//    self.landscapeFrame = CGRectMake(0, 0, MAX(bounds.size.width, bounds.size.height), MIN(bounds.size.width, bounds.size.height));
//    
//    if (!self.forceRotate) {
//        return;
//    }
////    if ([self.delegate respondsToSelector:@selector(videoPlayer:willChangeOrientationTo:)]) {
////        [self.delegate videoPlayer:self willChangeOrientationTo:deviceOrientation];
////    }
//    
////    CGFloat degrees = [self degreesForOrientation:deviceOrientation];
//        CGFloat degrees = 180;
//    __weak __typeof__(self) weakSelf = self;
//    UIInterfaceOrientation lastOrientation = self.visibleInterfaceOrientation;
//    self.visibleInterfaceOrientation = deviceOrientation;
//    [UIView animateWithDuration:0.3f animations:^{
//        CGRect bounds = [[UIScreen mainScreen] bounds];
//        CGRect parentBounds = CGRectZero;
//        CGRect viewBoutnds = CGRectZero;
//        if (UIInterfaceOrientationIsLandscape(deviceOrientation)) {
//            viewBoutnds = CGRectMake(0, 0, CGRectGetWidth(self.landscapeFrame), CGRectGetHeight(self.landscapeFrame));
//            parentBounds = CGRectMake(0, 0, CGRectGetHeight(bounds), CGRectGetWidth(bounds));
//        } else {
//            viewBoutnds = CGRectMake(0, 0, CGRectGetWidth(self.portraitFrame), CGRectGetHeight(self.portraitFrame));
//            parentBounds = CGRectMake(0, 0, CGRectGetWidth(bounds), CGRectGetHeight(bounds));
//        }
//        
//        self.superview.transform = CGAffineTransformMakeRotation(degreesToRadians(degrees));
//        
//        self.superview.bounds = parentBounds;
//        
//        CGRect rect = self.superview.frame;
//        rect.origin.x = 0;
//        rect.origin.y = 0;
//        [self.superview setFrame:rect];
//        
//        
//        CGRect wvFrame = self.superview.superview.frame;
//        if (wvFrame.origin.y > 0) {
//            wvFrame.size.height = CGRectGetHeight(bounds) ;
//            wvFrame.origin.y = 0;
//            self.superview.superview.frame = wvFrame;
//        }
//        
//        self.bounds = viewBoutnds;
////        CGRect rects = self.superview.frame;
////        rects.origin.x = 0;
////        rects.origin.y = 0;
//        
//        [self setFrameOriginX:0.0f];
//        [self setFrameOriginY:0.0f];
//        [self layoutForOrientation:deviceOrientation];
//        
//    } completion:^(BOOL finished) {
//        
//    }];
//    
//    [UIView animateWithDuration:0.3f animations:^{
//        
//        
//    } completion:^(BOOL finished) {
//        if ([self.delegate respondsToSelector:@selector(videoPlayer:didChangeOrientationFrom:)]) {
//            [self.delegate videoPlayer:self didChangeOrientationFrom:lastOrientation];
//        }
//    }];
//    
//    [[UIApplication sharedApplication] setStatusBarOrientation:self.visibleInterfaceOrientation animated:YES];
//    [self updateCaptionView:self.view.captionBottomView caption:self.captionBottom playerView:self.view];
//    [self updateCaptionView:self.view.captionTopView caption:self.captionTop playerView:self.view];
//    self.view.fullscreenButton.selected = self.isFullScreen = UIInterfaceOrientationIsLandscape(deviceOrientation);
//}
//
//- (void)layoutForOrientation:(UIInterfaceOrientation)interfaceOrientation {
//    if (UIInterfaceOrientationIsPortrait(interfaceOrientation)) {
//        self.topControlOverlay.hidden = YES;
//        self.topPortraitControlOverlay.hidden = NO;
//        
//        [self.buttonPlaceHolderView setFrameOriginY:PADDING/2];
//        self.buttonPlaceHolderView.hidden = YES;
//        
//        self.captionButton.hidden = YES;
//        self.videoQualityButton.hidden = YES;
//        
//        [self.bigPlayButton setFrameOriginY:CGRectGetMinY(self.bottomControlOverlay.frame)/2 - CGRectGetHeight(self.bigPlayButton.frame)/2];
//        
//        for (UIView *control in self.portraitControls) {
//            control.hidden = self.isControlsHidden;
//        }
//        for (UIView *control in self.landscapeControls) {
//            control.hidden = YES;
//        }
//        
//    } else {
//        [self.topControlOverlay setFrameOriginY:0.0f];
//        self.topControlOverlay.hidden = NO;
//        self.topPortraitControlOverlay.hidden = YES;
//        
//        [self.buttonPlaceHolderView setFrameOriginY:PADDING/2 + CGRectGetMaxY(self.topControlOverlay.frame)];
//        self.buttonPlaceHolderView.hidden = NO;
//        
//        self.captionButton.hidden = NO;
//        self.videoQualityButton.hidden = NO;
//        
//        [self.bigPlayButton setFrameOriginY:(CGRectGetMinY(self.bottomControlOverlay.frame) - CGRectGetMaxY(self.topControlOverlay.frame))/2 + CGRectGetMaxY(self.topControlOverlay.frame) - CGRectGetHeight(self.bigPlayButton.frame)/2];
//        
//        for (UIView *control in self.portraitControls) {
//            control.hidden = YES;
//        }
//        for (UIView *control in self.landscapeControls) {
//            control.hidden = self.isControlsHidden;
//        }
//    }
//    
//    [self layoutTopControls];
//    [self layoutSliderForOrientation:interfaceOrientation];
//}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
