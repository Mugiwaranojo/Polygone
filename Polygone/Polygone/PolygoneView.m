//
//  PolygoneView.m
//  Polygone
//
//  Created by fitec on 04/07/2014.
//  Copyright (c) 2014 Mugiwaranojo. All rights reserved.
//

#import "PolygoneView.h"
#import "Polygone.h"

#include "stdlib.h"

@implementation PolygoneView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    int nX= rect.size.width/2, nY= rect.size.height/2, r= MIN(nX, nY)-10;
    int nbSides= [self.model numberOfSide];
    
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    
    for(int i=1; i<=nbSides; i++)
    {
        CGFloat x=r*cos(2*M_PI*i/nbSides)+nX,
                y=r*sin(2*M_PI*i/nbSides)+nY;
        if(i==1)CGContextMoveToPoint(ctx, x, y);
        else CGContextAddLineToPoint(ctx, x, y);
    }
    
    CGContextClosePath(ctx);
    int randomColor= rand()%4;
    UIColor *color;
    switch (randomColor) {
        case 1:
            color =[UIColor blueColor];
            break;
        case 2:
            color =[UIColor redColor];
            break;
        case 3:
            color =[UIColor yellowColor];
            break;
        default:
            color =[UIColor greenColor];
            break;
    }
    CGContextSetFillColorWithColor(ctx, color.CGColor);
    CGContextSetStrokeColorWithColor(ctx, color.CGColor);
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

@end
