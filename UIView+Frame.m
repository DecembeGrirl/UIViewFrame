//
//  UIView+Frame.m
//  Demo
//
//  Created by 杨淑园 on 15/7/31.
//  Copyright (c) 2015年 yangshy. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

-(CGFloat)x
{
    return  CGRectGetMinX(self.frame);
}

-(CGFloat)y
{
    return  CGRectGetMaxX(self.frame);
}

-(CGFloat)left
{
    return  CGRectGetMinX(self.frame);
}

-(CGFloat)right
{
    return  CGRectGetMaxX(self.frame);
}

-(CGFloat)top
{
    return  CGRectGetMinY(self.frame);
}

-(CGFloat)bottom
{
    return  CGRectGetMaxY(self.frame);
}

-(CGFloat)width
{
    return  CGRectGetWidth(self.frame);
}
-(CGFloat)height
{
    return  CGRectGetHeight(self.frame);
}
-(CGSize)size
{
    return  self.frame.size;
}
-(CGPoint)origin
{
    return self.frame.origin;
}
-(CGPoint)bounsCenter
{
    return CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
}
-(CGFloat)centerX
{
    return self.center.x;
}
-(CGFloat)centerY
{
    return self.center.y;
}


-(void)setX:(CGFloat)x
{
    CGRect frame =  self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

-(void)setY:(CGFloat)y
{
    CGRect frame =  self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

-(void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

-(void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

-(void)setLeft:(CGFloat)left
{
    CGRect frame = self.frame;
    frame.origin.x = left;
    frame.size.width = MAX(self.right-left, 0);
    self.frame = frame;
}

-(void)setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.size.width = MAX(right-self.left, 0);
    self.frame = frame;
}

-(void)setTop:(CGFloat)top
{
    CGRect frame = self.frame;
    frame.origin.y = top;
    frame.size.height = MAX(self.bottom-top, 0);
    self.frame = frame;
}

-(void)setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.size.height = MAX(bottom-self.top, 0);
    self.frame = frame;
}

-(void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

-(void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

-(void)setBounsCenter:(CGPoint)bounsCenter
{
    self.center = bounsCenter;
}



@end
