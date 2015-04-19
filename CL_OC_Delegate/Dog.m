
//
//  Dog.m
//  CL_OC_Delegate
//
//  Created by ChirsLian on 15/4/18.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "Dog.h"

@implementation Dog
@synthesize ID = _ID;
@synthesize barkCount;
@synthesize delegete;

- (id)init{
    self = [super init];
    if (self) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateTimer:) userInfo:nil repeats:YES];
    }
    
    return self;
}

- (void)updateTimer:(id)arg
{
    barkCount ++;
    NSLog(@"Dog bark = %d",barkCount);
    [delegete Bark:self Count:barkCount];
}


@end
