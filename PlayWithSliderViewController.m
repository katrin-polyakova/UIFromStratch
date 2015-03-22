//
//  PlayWithSliderNewController.m
//  UIFromScratch
//
//  Created by Kate Polyakova on 3/22/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "PlayWithSliderViewController.h"

@interface PlayWithSliderViewController ()

@property(nonatomic, strong) UISlider *redSlider;
@property(nonatomic, strong) UISlider *greenSlider;
@property(nonatomic, strong) UISlider *blueSlider;
@end

@implementation PlayWithSliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.redSlider = [[UISlider alloc] initWithFrame:CGRectMake(40, 40, 220, 25)];
    self.greenSlider = [[UISlider alloc] initWithFrame:CGRectMake(40, 80, 220, 25)];
    self.blueSlider = [[UISlider alloc] initWithFrame:CGRectMake(40, 120, 220, 25)];

    [@[self.redSlider, self.greenSlider, self.blueSlider]
            enumerateObjectsUsingBlock:^(UISlider * obj, NSUInteger idx, BOOL *stop) {

                [self.view addSubview:obj];
                
                [obj setMinimumValue:0];
                [obj setMaximumValue:1];
                
                [obj addTarget:self action:@selector(onSliderValueChanged:) forControlEvents:UIControlEventValueChanged];

            }];
    [self onSliderValueChanged:nil];
}

- (void)onSliderValueChanged:(UISlider *)slider{

    CGFloat red = self.redSlider.value;
    CGFloat green = self.greenSlider.value;
    CGFloat blue = self.blueSlider.value;
    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
    
    
    // Dispose of any resources that can be recreated.
}


@end
