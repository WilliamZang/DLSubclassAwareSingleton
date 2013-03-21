//
//  DLFoo.m
//  SubclassAwareSingleton
//
//  Created by Vincent Esche on 3/20/13.
//  Copyright (c) 2013 Vincent Esche. All rights reserved.
//

#import "DLFoo.h"
#import "NSObject+DLSubclassAwareSingleton.h"

@implementation DLFoo

+ (instancetype)sharedFoo {
	return [self sharedInstance_dl];
}

@end
