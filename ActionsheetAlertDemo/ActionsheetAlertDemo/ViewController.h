//
//  ViewController.h
//  ActionsheetAlertDemo
//
//  Created by jackman on 4/18/13.
//  Copyright (c) 2013 jackman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIActionSheetDelegate, UIAlertViewDelegate>

- (IBAction)ActionSheetDisplay:(id)sender;
- (IBAction)AlertDisplay:(id)sender;

@end
