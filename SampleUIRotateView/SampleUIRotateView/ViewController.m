//
//  ViewController.m
//  SampleUIRotateView
//
//  Created by Kid Young on 2/1/19.
//  Copyright © 2019 Yang XiHong. All rights reserved.
//

#import "ViewController.h"
#import <UIRotateView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)valueChanged:(id)sender {
    ((UIRotateView *)self.view.subviews.firstObject).value = ((UISlider *)sender).value;
    ((UIRotateView *)self.view.subviews.lastObject).value = ((UISlider *)sender).value;
}

@end
