//
//  ViewController.m
//  PushTheBubbleInObjectiveC
//
//  Created by Tiffany Diamanta on 11/18/15.
//  Copyright © 2015 Tiffany Diamanta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)pushMeButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *redButton;
@property (weak, nonatomic) IBOutlet UIButton *greenButton;
@property (weak, nonatomic) IBOutlet UIButton *blueButton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *redButtonLeadingConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *greenButtonVerticalBottomSpaceConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *blueButtonVerticalBottomSpaceConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *blueButtonTraillingConstraint;

@end

@implementation ViewController
@synthesize redButton, greenButton, blueButton, redButtonLeadingConstraint, greenButtonVerticalBottomSpaceConstraint, blueButtonVerticalBottomSpaceConstraint, blueButtonTraillingConstraint;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushMeButton:(UIButton *)sender {
    [UIView animateWithDuration:2.0 animations:^{
        
        redButton.alpha = 0;
        greenButton.alpha = 0;
        blueButton.alpha = 0;
        redButtonLeadingConstraint.constant = -30;
        greenButtonVerticalBottomSpaceConstraint.constant = -75;
        blueButtonTraillingConstraint.constant = -32;
        [self.view layoutIfNeeded];
        
    }];
}
@end
