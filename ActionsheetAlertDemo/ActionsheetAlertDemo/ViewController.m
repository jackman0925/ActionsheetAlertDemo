//
//  ViewController.m
//  ActionsheetAlertDemo
//
//  Created by jackman on 4/18/13.
//  Copyright (c) 2013 jackman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ActionSheetDisplay:(id)sender {
    UIActionSheet * actions = [[UIActionSheet alloc] initWithTitle:@"Just for testing TITLE"
                                                     delegate:self 
                                            cancelButtonTitle:@"Cancel"
                                       destructiveButtonTitle:@"Confirm"
                                            otherButtonTitles:@"Items 1",@"Items 2", nil];
    actions.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    [actions showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    //UIActionSheetDelegate feedback, so must be implement delegate UIActionSheetDelegate
    //buttonIndex start from 0, 1... , indicate which button be selection.
    NSLog(@"(UIActionSheet)Selection: %@",[actionSheet buttonTitleAtIndex:buttonIndex]);
}


- (IBAction)AlertDisplay:(id)sender {
    UIAlertView * alertV = [[UIAlertView alloc] initWithTitle:@"Just for testing AlertV"
                                                      message:@"message-content"
                                                     delegate:self
                                            cancelButtonTitle:@"cancel title"
                                            otherButtonTitles:@"Items 1", @"Items 2", nil];
    alertV.alertViewStyle = UIAlertViewStyleDefault;
    [alertV show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    //UIAlertViewDelegate feedback
    NSLog(@"(UIAlertView)Selection %@",[alertView buttonTitleAtIndex:buttonIndex]);
}

@end
