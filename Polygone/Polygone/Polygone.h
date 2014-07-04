//
//  Polygone.h
//  Polygone
//
//  Created by fitec on 03/07/2014.
//  Copyright (c) 2014 Mugiwaranojo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Polygone : NSObject

// Accessort for numberOfSide
- (int) numberOfSide;
- (void) setNumberOfSide:(int)numberOfSide;


// Return the name of the polygone
- (NSString *) name;

@end
