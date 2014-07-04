//
//  PolygoneView.m
//  Polygone
//
//  Created by fitec on 04/07/2014.
//  Copyright (c) 2014 Mugiwaranojo. All rights reserved.
//

#import "PolygoneView.h"
#import "Polygone.h"

@implementation PolygoneView
{
    Polygone * _polygone;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _polygone = [[Polygone alloc] init];
    }
    return self;
}

-(void)setPolygone:(Polygone *)value
{
    _polygone = value;
}

-(Polygone *) polygone
{
    return _polygone;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    CGFloat x=10, y=10;
    CGContextMoveToPoint(ctx, x, y);
    
}

@end
