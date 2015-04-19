//
//  Person.h
//  CL_OC_Delegate
//
//  Created by ChirsLian on 15/4/18.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject <DogBark>
{
    Dog *_dog;
}
@property (retain) Dog *dog;
@end
