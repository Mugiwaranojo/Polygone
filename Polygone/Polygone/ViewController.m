//
//  ViewController.m
//  Polygone
//
//  Created by fitec on 03/07/2014.
//  Copyright (c) 2014 Mugiwaranojo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *polygoneTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *polygoneSidesLabel;
@property (weak, nonatomic) IBOutlet PolygoneView *polygoneView;



@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.polygoneView.model= [[Polygone alloc] init];
    [self refresh];
}


- (IBAction)changeNumberOfside:(UISlider *)sender {
    int valueSelected= (int) sender.value;
    [self.polygoneView.model setNumberOfSide: valueSelected];
    [self refresh];
}

- (void) refresh
{
    self.polygoneTitleLabel.text= [self.polygoneView.model name];
    self.polygoneSidesLabel.text= [NSString stringWithFormat:@"Polygone à %d côtés", [self.polygoneView.model numberOfSide]];
    [self.polygoneView setNeedsDisplay];
}

@end
