//
//  UIView+Frame.h
//  Demo
//
//  Created by 杨淑园 on 15/7/31.
//  Copyright (c) 2015年 yangshy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)
@property (nonatomic, assign) CGFloat left,right,top, bottom;
@property (nonatomic, assign) CGFloat x,y,width,height;
@property (nonatomic, assign) CGSize  size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGPoint bounsCenter;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@end
