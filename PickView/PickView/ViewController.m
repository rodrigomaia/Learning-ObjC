//
//  ViewController.m
//  PickView
//
//  Created by Rodrigo Maia on 04/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pickView=_pickView;

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.pickView = [[UIPickerView alloc] init];
  self.pickView.dataSource = self;
  self.pickView.delegate = self;
  self.pickView.showsSelectionIndicator = YES;
  self.pickView.center = self.view.center;
  [self.view addSubview:self.pickView];
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
  if([pickerView isEqual:self.pickView]) {
    return [NSString stringWithFormat:@"Linha %d", row+1];
  }
  return @"";
} 

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
  if([pickerView isEqual:self.pickView]){
    return 1;
  }
  return 0;
  
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
  if ([pickerView isEqual:self.pickView]) {
    return 10;
  }
  return 0;
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
