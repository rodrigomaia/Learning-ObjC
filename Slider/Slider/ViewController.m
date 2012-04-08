//
//  ViewController.m
//  Slider
//
//  Created by Rodrigo Maia on 08/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider=_slider, labelValor=_labelValor;

-(void) dealloc{
  [super dealloc];
  [_slider release];
  [_labelValor release];
}

-(IBAction)zerar:(id)sender{
  self.slider.value = 0;
  self.labelValor.text = @"0%";
}

-(void) mudaValor:(UISlider *) sliderParam{
  self.labelValor.text = [[NSString alloc] initWithFormat:@"%.1f%%", sliderParam.value*100];
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self.slider addTarget:self 
                  action:@selector(mudaValor:) 
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
