//
//  Polygone.m
//  Polygone
//
//  Created by fitec on 03/07/2014.
//  Copyright (c) 2014 Mugiwaranojo. All rights reserved.
//

#import "Polygone.h"

@implementation Polygone
{
    int _numberOfSide;
}

-(id)init
{
    if(self=[super init])
    {
        _numberOfSide=3;
    }
    return self;
}

-(int) numberOfSide
{
    return _numberOfSide;
}

-(void) setNumberOfSide:(int)numberOfSide
{
    if(numberOfSide>=3 && numberOfSide <=12)
    {
        _numberOfSide = numberOfSide;
    }
}

-(NSString *)name
{
    NSArray * names=  @[@"Triangle",
                        @"Quadrilatère",
                        @"Pentagone",
                        @"Hexagone",
                        @"Heptagone",
                        @"Octogone",
                        @"Ennéagone",
                        @"Decagone",
                        @"Hendecagone",
                        @"Dodécagone"];
    NSString * value= names[self.numberOfSide-3];
    return value;
}

@end

