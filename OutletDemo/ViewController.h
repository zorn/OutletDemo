//
//  ViewController.h
//  OutletDemo
//
//  Created by Michael Zornek on 11/13/13.
//  Copyright (c) 2013 Michael Zornek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *mainSwitch;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mainSegmentControl;
@property (weak, nonatomic) IBOutlet UITextField *mainTextField;

@property (strong, nonatomic) IBOutletCollection(UITextField) NSSet *textFields;

- (IBAction)swtichChanged:(id)sender;
- (IBAction)segmentChanged:(id)sender;


@end
