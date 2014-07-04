//
//  PolygoneTests.m
//  PolygoneTests
//
//  Created by fitec on 03/07/2014.
//  Copyright (c) 2014 Mugiwaranojo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Polygone.h"

@interface PolygoneTests : XCTestCase

@end

@implementation PolygoneTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

// test les accessors sur numberOfSides
-(void)testNumberOfSide
{
    Polygone *p= [[Polygone alloc] init];
    int testValue= 6;
    [p setNumberOfSide:testValue];
    int resultValue= [p numberOfSide];
    XCTAssertEqual(testValue, resultValue);
}

//test le polygone par defaut a trois cotés
-(void)testDefaultNumberOfSide
{
    Polygone *p= [[Polygone alloc] init];
    XCTAssertEqual([p numberOfSide], 3);
}

//test le polygone ne peut avoir un nombre de coté < 3
-(void)testMinNumberOfSide
{
    Polygone *p= [[Polygone alloc] init];
    int testValue= 2;
    [p setNumberOfSide:testValue];
    int resultValue= [p numberOfSide];
    XCTAssertNotEqual(testValue, resultValue);
}

//test le polygone ne peut avoir un nombre de coté > 12
-(void)testMaxNumberOfSide
{
    Polygone *p= [[Polygone alloc] init];
    int testValue= 13;
    [p setNumberOfSide:testValue];
    int resultValue= [p numberOfSide];
    XCTAssertNotEqual(testValue, resultValue);
}

//test du nom retourné en fonction du nombre de coté
-(void)testName
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
    Polygone *p= [[Polygone alloc] init];
    for(int i=3; i<13; i++){
        [p setNumberOfSide:i];
        NSString * testValue= names[i-3];
        NSString * resutlValue= [p name];
        XCTAssertTrue([testValue isEqualToString:resutlValue]);
    }
}

@end
