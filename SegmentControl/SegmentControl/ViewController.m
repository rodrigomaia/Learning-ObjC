//
//  ViewController.m
//  SegmentControl
//
//  Created by Rodrigo Maia on 08/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize segmentedControl=_segmentedControl, label=_label;

-(void) dealloc{
  [super dealloc];
  [_segmentedControl release];
  [_label release];
}

-(void) selecionouOpcao:(UISegmentedControl *) segmented{
  NSLog(@"%d",[segmented selectedSegmentIndex]);
  self.label.text = [NSString stringWithFormat:@"Selecionou o %@", [segmented titleForSegmentAtIndex:[segmented selectedSegmentIndex]]];
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self.segmentedControl addTarget:self 
                            action:@selector(selecionouOpcao:) 
                  forControlEvents:UIControlEventValueChanged];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
