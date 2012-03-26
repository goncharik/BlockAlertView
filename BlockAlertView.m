//
//  BlockAlertView.m
//  AlertWithBlocksProject
//
//  Created by Zhenia on 03/26/12.
//  Copyright (c) 2012 Dimalex LLC. All rights reserved.
//

#import "BlockAlertView.h"

@interface BlockAlertView ()

@property (nonatomic, weak) UIAlertView *alertView;
@property (nonatomic, retain) NSArray *blockButtons;

@end

@implementation BlockAlertView

@synthesize alertView = _alertView;

- (UIAlertView *)alertView
{
    if (_alertView == nil) _alertView = [[UIAlertView alloc] init];
    return _alertView;
}

- (void)showWithTitle:(NSString *)aTitle message:(NSString *)aMessage blockButtons:(NSArray *)aBlockButtons
{
    [self.alertView setTitle:aTitle];
    [self.alertView setMessage:aMessage];
    [self.alertView setDelegate:self];
    self.blockButtons = aBlockButtons;
    for (BlockAlertViewButton *button in aBlockButtons)
    {
        [self.alertView addButtonWithTitle:button.title];
    }

    [self.alertView show];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    BlockAlertViewButtonBlock pressedButtonBlock = [self.blockButtons objectAtIndex:buttonIndex];
    if (pressedButtonBlock)
    {
        pressedButtonBlock();
    }
}


@end
