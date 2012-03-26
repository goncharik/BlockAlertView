//
//  BlockAlertViewButton
//  ${APP_NAME}
//
//  Created by zhenya on 26.03.12.
//  Copyright (c) 2012 Dimalex LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^BlockAlertViewButtonBlock)();

@interface BlockAlertViewButton : NSObject

@property (nonatomic, retain) id title;
@property (nonatomic) BlockAlertViewButtonBlock block;

- (id)initWithTitle:(NSString *)aTitle andBlock:(BlockAlertViewButtonBlock)aBlock;

@end