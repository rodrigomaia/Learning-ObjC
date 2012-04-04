//
//  ViewController.m
//  Switches
//
//  Created by Rodrigo Maia on 02/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize switch1=_switch1, 
            switch2=_switch2, 
            switch3=_switch3;

-(void) dealloc{
  [super dealloc];
  [_switch1 release];
  [_switch2 release];  
  [_switch3 release];
}

-(void) mecheuNoSwitch:(UISwitch *)sender{
  NSLog(@"%d setado %@", sender.tag, ([sender isOn]?@"YES":@"NO"));
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  [self.switch1 addTarget:self 
                  action:@selector(mecheuNoSwitch:) 
         forControlEvents:UIControlEventValueChanged];

  [self.switch2 addTarget:self 
                   action:@selector(mecheuNoSwitch:) 
         forControlEvents:UIControlEventValueChanged];

  [self.switch3 addTarget:self 
                   action:@selector(mecheuNoSwitch:) 
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
