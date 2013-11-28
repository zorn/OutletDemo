//
//  ViewController.m
//  OutletDemo
//
//  Created by Michael Zornek on 11/13/13.
//  Copyright (c) 2013 Michael Zornek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (assign) BOOL isBlue;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.isBlue = YES;
    [self updateUI];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.mainTextField.text = [[NSDate date] description];
    [self updateUI];
}

- (IBAction)swtichChanged:(id)sender
{
    for (UITextField *textField in self.textFields) {
        textField.enabled = !textField.enabled;
    }
}

- (void)updateUI
{
    for (UITextField *textField in self.textFields) {
        textField.text = self.mainTextField.text;
        if (self.isBlue) {
            textField.textColor = self.view.window.tintColor;
        } else {
            textField.textColor = [UIColor redColor];
        }
    }
}

- (IBAction)segmentChanged:(id)sender
{
    self.isBlue = !self.isBlue;
    [self updateUI];
}

#pragma mark - UITextField Delegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    [self updateUI];
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


@end
