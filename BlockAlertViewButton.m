//
//  BlockAlertViewButton
//  ${APP_NAME}
//
//  Created by zhenya on 26.03.12.
//  Copyright (c) 2012 Dimalex LLC. All rights reserved.
//

#import "BlockAlertViewButton.h"


@interface BlockAlertViewButton ()


@end

@implementation BlockAlertViewButton
@synthesize title = _title;
@synthesize block = _block;


- (id)initWithTitle:(NSString *)aTitle andBlock:(BlockAlertViewButtonBlock)aBlock
{
    self = [super init];

    if (self)
    {
        self.title = aTitle;
        self.block = aBlock;
    }

    return self;
}

@end