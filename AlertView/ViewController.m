//
//  ViewController.m
//  AlertView
//
//  Created by Rodrigo Maia on 01/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)alertar:(id)sender{
  
  NSString *message = @"Deseja abrir este link no Safari?";
  
  UIAlertView *alert = [[UIAlertView alloc] 
                        initWithTitle:@"Abrir link"
                        message:message
                        delegate:nil 
                        cancelButtonTitle:[self noButtonTitle]
                        otherButtonTitles:[self yesButtonTitle], nil];
  
  [alert show];
}

-(NSString *) yesButtonTitle{
  return @"Sim";
}

-(NSString *) noButtonTitle{
  return @"Não";
}

-(void) viewDidAppear:(BOOL)animated{
  [super viewDidAppear:animated];
  self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
