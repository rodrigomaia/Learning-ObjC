//
//  ViewController.m
//  AlertView
//
//  Created by Rodrigo Maia on 01/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(void)alertarSecureTextInput;
-(void)alertarPlainTextInput;
-(void)alertarLoginAndPasswordInput;
@end

@implementation ViewController

-(IBAction)alertar:(id)sender{
  UIAlertView *alert = [[UIAlertView alloc] 
                        initWithTitle:@"titulo" 
                        message:@"Alerta Padrão" 
                        delegate:nil 
                        cancelButtonTitle:@"cancel" 
                        otherButtonTitles:@"ok", nil];
  
  [alert show];
  
  [self alertarSecureTextInput];
  [self alertarPlainTextInput];
  [self alertarLoginAndPasswordInput];
}

- (void) alertarSecureTextInput{  
  UIAlertView *alert = [[UIAlertView alloc] 
                         initWithTitle:@"titulo" 
                         message:@"Alerta Security Text Input" 
                         delegate:nil 
                         cancelButtonTitle:@"cancel" 
                         otherButtonTitles:@"ok", nil];
  
  [alert setAlertViewStyle:UIAlertViewStyleSecureTextInput];

  [alert show];
};

- (void) alertarPlainTextInput{
  UIAlertView *alert = [[UIAlertView alloc] 
                        initWithTitle:@"titulo" 
                        message:@"Alerta Plain Text Input" 
                        delegate:nil 
                        cancelButtonTitle:@"cancel" 
                        otherButtonTitles:@"ok", nil];

  [alert setAlertViewStyle:UIAlertViewStylePlainTextInput];
  
  [alert show];
};

- (void) alertarLoginAndPasswordInput{
  UIAlertView *alert = [[UIAlertView alloc] 
                        initWithTitle:@"titulo" 
                        message:@"Alerta Login and Password Input" 
                        delegate:nil 
                        cancelButtonTitle:@"cancel" 
                        otherButtonTitles:@"ok", nil];
  
  [alert setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput];
  
  [alert show];
};


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
