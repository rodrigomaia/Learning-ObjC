//
//  ViewController.h
//  PickView
//
//  Created by Rodrigo Maia on 04/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property(nonatomic, strong) IBOutlet UIPickerView *pickView;
@end
