//
//  PlayWithEditViewController.m
//  UIFromScratch
//
//  Created by Kate Polyakova on 3/22/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "PlayWithEditViewController.h"
#import "NSString+Utils.h"

@interface PlayWithEditViewController () <UITextFieldDelegate>

@property(nonatomic, strong) UITextField *emailText;
@end

@implementation PlayWithEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor yellowColor]];
    
    self.emailText = [[UITextField alloc] initWithFrame:CGRectMake(30, 30, 200, 22)];
    [self.emailText setBorderStyle:UITextBorderStyleRoundedRect];
    [self.emailText setPlaceholder:@"Type your e-mail here"];

    self.emailText.delegate = self;

    [self.emailText addTarget:self action:@selector(didChangeText:) forControlEvents:UIControlEventEditingChanged];

    [self.view addSubview:self.emailText];

    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onViewTapped:)];
    [self.view addGestureRecognizer:recognizer];
}

- (void)didChangeText:(UITextField *)sender {
    NSString *regexpString = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}";
    NSPredicate *regexp = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regexpString];

    NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet];
    NSString *text = [sender.text stringByTrimmingLeadingCharactersInSet:set];
    text = [text stringByTrimmingTrailingCharactersInSet:set];
    

    BOOL result = [regexp evaluateWithObject:text];

    sender.textColor = result ? [UIColor blackColor] : [UIColor redColor];
}

- (void)onViewTapped:(id)sender {
    [self.emailText resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    textField.backgroundColor = [UIColor orangeColor];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    textField.backgroundColor = [UIColor whiteColor];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.emailText resignFirstResponder];
    return YES;
}


@end
