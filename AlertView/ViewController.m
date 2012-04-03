//
//  ViewController.m
//  AlertView
//
//  Created by Rodrigo Maia on 01/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, assign) UITextField *cartao;
@end

@implementation ViewController

@synthesize cartao;

-(void) dealloc{
  [super dealloc];
  [cartao release];
}

-(IBAction)alertar:(id)sender{
  
  UIAlertView *alert = [[UIAlertView alloc] 
                        initWithTitle:@"Informações de Pagamento" 
                        message:@"Cartão de Crédito" 
                        delegate:self 
                        cancelButtonTitle:@"Cancelar" 
                        otherButtonTitles:@"Ok", nil];
  
  [alert setAlertViewStyle:UIAlertViewStylePlainTextInput];
  
  cartao = [alert textFieldAtIndex:0];
  cartao.keyboardType = UIKeyboardTypeNumberPad;
  
  [alert show];
}

-(void) alertView:(UIAlertView *)alertView 
        clickedButtonAtIndex:(NSInteger)buttonIndex{

  if (buttonIndex == 0) {
    NSLog(@"Apertei no Cancelar");
  }else if (buttonIndex == 1) {
    NSLog(@"O cartão de crédito é: %@", cartao.text);
  }
  
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
