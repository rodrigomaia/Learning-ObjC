//
//  ViewController.h
//  Slider
//
//  Created by Rodrigo Maia on 08/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) IBOutlet UISlider *slider;
@property(nonatomic, strong) IBOutlet UILabel *labelValor;

-(IBAction)zerar:(id)sender;

@end
