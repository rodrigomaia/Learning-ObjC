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
  UIAlertView *alert = [[UIAlertView alloc] 
                        initWithTitle:@"titulo" 
                        message:@"mensagem" 
                        delegate:nil 
                        cancelButtonTitle:@"cancel" 
                        otherButtonTitles:@"ok", nil];
  
  [alert show];
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
