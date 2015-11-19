//
//  CustomButton.m
//  PushTheBubbleInObjectiveC
//
//  Created by Tiffany Diamanta on 11/18/15.
//  Copyright © 2015 Tiffany Diamanta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface CustomButton : UIButton

@end

@implementation CustomButton : UIButton

- (void)drawRect:(CGRect)rect
{
    // Create a new rect with some padding
    // + create a circle from this new rect:
    CGRect box = CGRectInset(self.bounds, self.bounds.size.width * 0.1f, self.bounds.size.height * 0.1f);
    UIBezierPath *ballBezierPath = [UIBezierPath bezierPathWithOvalInRect:box];
    [[UIColor whiteColor] setStroke];
    [[UIColor blueColor] setFill]; // Green here to show the black area
    [ballBezierPath stroke];
    [ballBezierPath fill];
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
}

@end