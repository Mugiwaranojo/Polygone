//
//  ViewController.m
//  Polygone
//
//  Created by fitec on 03/07/2014.
//  Copyright (c) 2014 Mugiwaranojo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
     PolygoneView * _polygoneView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _polygoneView = [[PolygoneView alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeNumberOfside:(UISlider *)sender {
    Polygone *p = [_polygoneView polygone];
    int valueSelected= (int) sender.value;
    [p setNumberOfSide: valueSelected];
    printf("numberOfSide : %d ;", [p numberOfSide]);
    NSString *tmpName=[p name];
    printf("name : %s\n", [tmpName UTF8String]);
}

@end
