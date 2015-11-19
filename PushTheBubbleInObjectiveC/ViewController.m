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

@end

@implementation ViewController
@synthesize redButton, greenButton, blueButton, redButtonLeadingConstraint;
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
        redButtonLeadingConstraint.constant = -30;
        [self.view layoutIfNeeded];
        
    }];
}
@end
