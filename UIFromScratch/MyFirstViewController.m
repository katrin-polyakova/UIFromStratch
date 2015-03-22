//
//  MyFirstViewController.m
//  UIFromScratch
//
//  Created by Kate Polyakova on 3/22/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "MyFirstViewController.h"

@interface MyFirstViewController ()

@property(nonatomic, strong) UIButton *redButton;
@property(nonatomic, strong) UIButton *greenButton;
@property(nonatomic, strong) UIButton *blueButton;
@end

@implementation MyFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor cyanColor];
    
    self.redButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.redButton];
    [self.redButton setTitle:@"Make Background Red" forState:UIControlStateNormal];
    [self.redButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateHighlighted];
    [self.redButton setFrame:CGRectMake(30, 30, 220, 25)];
    [self.redButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self.redButton addTarget:self action:@selector(onRedButtonTapped:) forControlEvents:UIControlEventTouchUpInside];

    self.greenButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.greenButton];
    [self.greenButton setTitle:@"Make Background Green" forState:UIControlStateNormal];
    [self.greenButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateHighlighted];
    [self.greenButton setFrame:CGRectMake(30, 65, 220, 25)];
    [self.greenButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self.greenButton addTarget:self action:@selector(onGreenButtonTapped:) forControlEvents:UIControlEventTouchUpInside];

    self.blueButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.blueButton];
    [self.blueButton setTitle:@"Make Background Blue" forState:UIControlStateNormal];
    [self.blueButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateHighlighted];
    [self.blueButton setFrame:CGRectMake(30, 100, 220, 25)];
    [self.blueButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self.blueButton addTarget:self action:@selector(onBlueButtonTapped:) forControlEvents:UIControlEventTouchUpInside];


    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onRedButtonTapped: (UIButton *)button{
    self.view.backgroundColor = [UIColor redColor];
}

- (void)onGreenButtonTapped: (UIButton *)button{
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)onBlueButtonTapped: (UIButton *)button{
    self.view.backgroundColor = [UIColor blueColor];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
