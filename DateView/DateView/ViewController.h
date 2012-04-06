//
//  ViewController.h
//  DateView
//
//  Created by Rodrigo Maia on 04/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic, strong) IBOutlet UIDatePicker *datePicker;
-(IBAction) apertouBotao:(id)sender;
@end
