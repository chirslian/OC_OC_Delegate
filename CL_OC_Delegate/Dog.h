//
//  Dog.h
//  CL_OC_Delegate
//
//  Created by ChirsLian on 15/4/18.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DogBark;
@interface Dog : NSObject
{
    NSTimer *timer;
    int _ID;
    int barkcount;
    id <DogBark> delegate;
    
}
@property int ID;
@property int barkCount;
@property (assign) id <DogBark> delegete;
@end

@protocol DogBark <NSObject>

- (void)Bark:(Dog *)thisDog Count:(int)count;

@end
