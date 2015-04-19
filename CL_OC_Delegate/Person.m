//
//  Person.m
//  CL_OC_Delegate
//
//  Created by ChirsLian on 15/4/18.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "Person.h"
#import "Dog.h"

@implementation Person
@synthesize dog = _dog;


- (void) setDog:(Dog *)dog
{
    if(_dog != dog)
    {
        [_dog release];
        _dog = [dog retain];
        [_dog setDelegete:self];
    }
}

- (Dog *)dog
{
    return _dog;
}

- (void)Bark:(Dog *)thisDog Count:(int)count
{
    NSLog(@"Person Dog id = %d,count = %d",[thisDog ID],count);
}


- (void)dealloc{
    self.dog = nil;
    [super dealloc];
}
@end
