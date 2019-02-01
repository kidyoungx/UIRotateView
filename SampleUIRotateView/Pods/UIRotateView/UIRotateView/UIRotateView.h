//
//  UIRotateView.h
//  CinCer
//
//  Created by Kid Young on 1/23/18.
//  Copyright © 2018 Yang XiHong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIRotateView : UIView

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithFrame:(CGRect)frame NS_UNAVAILABLE;

/**
 The slider’s current value.
 Use this property to get and set the slider’s current value. To render an animated transition from the current value to the new value, use the setValue:animated: method instead.
 If you try to set a value that is below the minimum or above the maximum, the minimum or maximum value is set instead. The default value of this property is 0.0.

 default 0.0. this value will be pinned to 0.0/1.0
 */
@property (nonatomic, assign) IBInspectable float value;

/**
 The minimum value of the slider.
 Use this property to set the value that the restrict start angle of the circle slider represents. If you change the value of this property, and the current value of the slider is below the new minimum, the slider adjusts the value property to match the new minimum. If you set the minimum value to a value larger than the maximum, the slider updates the maximum value to equal the minimum.

 The default value of this property is 0.0.

 default 0.0. the current value may change if outside new min value
 */
//@property (nonatomic, assign) IBInspectable float minimumValue;

/**
 The maximum value of the slider.
 Use this property to set the value that the restrict end angle of the circle slider represents. If you change the value of this property, and the current value of the slider is above the new maximum, the slider adjusts the value property to match the new maximum. If you set the maximum value to a value smaller than the minimum, the slider updates the minimum value to equal the maximum.

 The default value of this property is 1.0.

 default 1.0. the current value may change if outside new max value
 */
//@property (nonatomic, assign) IBInspectable float maximumValue;

/**
 default = NO. rotate the view in clockwise or anticlockwise.
 */
@property (nonatomic, assign) IBInspectable BOOL clockwise;

/**
 default = 0.5. The total duration of the view rotate one circle, measured in seconds. If you specify a negative value or 0, the changes are made without animating them.
 */
@property (nonatomic, assign) IBInspectable double duration;

/**
 default = M_PI_2. draw the circle from this angle.
 */
//@property (nonatomic, assign) IBInspectable CGFloat startAngle;

/**
 Sets the slider’s current value, allowing you to animate the change visually.
 If you specify a value that is beyond the minimum or maximum values, the slider limits the value to the minimum or maximum. For example, if the minimum value is 0.0 and you specify -1.0, the slider sets the value property to 0.0.

 move slider at fixed velocity (i.e. duration depends on distance). does not send action

 @param value The new value to assign to the value property
 @param animated Specify YES to animate the change in value; otherwise, specify NO to update the slider’s appearance immediately. Animations are performed asynchronously and do not block the calling thread.
 */
- (void)setValue:(float)value animated:(BOOL)animated;

@end
