//
//  ViewController.m
//  DateView
//
//  Created by Rodrigo Maia on 04/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize datePicker=_datePicker;

- (void) mudouDatePicker:(UIDatePicker *)datePicker{
  if([datePicker isEqual:self.datePicker]){
    NSLog(@"Data alterou para %@", datePicker.date);
  }
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self.datePicker addTarget:self action:@selector(mudouDatePicker:) forControlEvents:UIControlEventValueChanged];
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
