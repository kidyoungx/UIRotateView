//
//  UIRotateView.m
//  CinCer
//
//  Created by Kid Young on 1/23/18.
//  Copyright © 2018 Yang XiHong. All rights reserved.
//

#import "UIRotateView.h"

#define M2PI (2 * M_PI)

@interface UIRotateView () {
    float _value;
}

@property (nonatomic, assign) float lastValue;

@end

IB_DESIGNABLE
@implementation UIRotateView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configuration];
        [self initialization];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self configuration];
        [self initialization];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
}

#pragma mark - Private Methods

- (void)initialization
{
}

- (void)configuration
{
    self.value = 0.0;
//    self.minimumValue = 0.0;
//    self.maximumValue = 1.0;
    self.duration = 0.5;
//    self.startAngle = M_PI_2;
}

- (void)rotateTransform
{
    self.layer.transform = CATransform3DMakeRotation(M2PI * self.value * (self.clockwise * 2 - 1.0), 0, 0, 1);
}

- (void)rotateAnimation
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.repeatCount = 1;
    animation.removedOnCompletion = YES;
    animation.fromValue = @(M2PI * (self.clockwise * 2 - 1.0) * self.lastValue);
    animation.toValue = @(M2PI * (self.clockwise * 2 - 1.0) * self.value);
    animation.duration = self.duration;
    [self.layer addAnimation:animation forKey:@"rotation"];
}

#pragma mark - Public Methods

- (float)value
{
//    if (_value < self.minimumValue) {
//        _value = self.minimumValue;
//    }
//    if (_value > self.maximumValue) {
//        _value = self.maximumValue;
//    }
    return _value;
}

- (void)setValue:(float)value
{
    [self setValue:value animated:NO];
}

- (void)setValue:(float)value animated:(BOOL)animated
{
    _value = value;
    [self rotateTransform];
    if (animated) {
        [self rotateAnimation];
    }
    self.lastValue = self.value;
}

@end
