//
//  main.m
//  CL_OC_Delegate
//
//  Created by ChirsLian on 15/4/18.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    Person *xiaoLi = [[Person alloc]init];
    Dog *dog = [[Dog alloc] init];
    [dog setID:03];
    [xiaoLi setDog:dog];
    [dog release];
    
    while (1) {
        [[NSRunLoop currentRunLoop] run];
    }
    
    [xiaoLi release];
    
    
    return 0;
}
