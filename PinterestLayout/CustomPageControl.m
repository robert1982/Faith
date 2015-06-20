//
//  CustomPageControl.m
//  DummyKeyboardContainAppNew
//
//  Created by Jitendra Kumar on 28/11/14.
//  Copyright (c) 2014 Ankit Kumar. All rights reserved.
//

#import "CustomPageControl.h"

@implementation CustomPageControl

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
    }
    return self;
}

-(void)updateDots
{
    
    for (int i = 0; i < [self.subviews count]; i++)
    {
        UIImageView* dot = (UIImageView *)[self.subviews objectAtIndex:i];
        dot.frame = CGRectMake(dot.frame.origin.x, dot.frame.origin.y, 12, 12);
        [dot.layer setCornerRadius:6];
        if (i == self.currentPage)
            [dot setBackgroundColor:[UIColor redColor]];
        else
            [dot setBackgroundColor:[UIColor whiteColor]];
    }
}

-(void)setCurrentPage:(NSInteger)page
{
    [super setCurrentPage:page];
    [self updateDots];
}

@end
