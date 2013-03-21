//
//  NSObject+DLSubclassAwareSingleton.m
//  SubclassAwareSingleton
//
//  Created by Vincent Esche on 3/20/13.
//  Copyright (c) 2013 Vincent Esche. All rights reserved.
//

#import "NSObject+DLSubclassAwareSingleton.h"

#import <objc/runtime.h>

void * const DLSubclassAwareSingletonSharedInstanceKey = (void * const)&DLSubclassAwareSingletonSharedInstanceKey;

@implementation NSObject (DLSubclassAwareSingleton)

+ (instancetype)sharedInstance_dl {
	// Allows subclasses to have their very own singleton instance
	// accessed thru the very same generic singleton method.
	id sharedInstance;
	@synchronized(self) {
		sharedInstance = objc_getAssociatedObject([self class], DLSubclassAwareSingletonSharedInstanceKey);
		if (!sharedInstance) {
			sharedInstance = [[self alloc] init];
			objc_setAssociatedObject([self class], DLSubclassAwareSingletonSharedInstanceKey, sharedInstance, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
		}
	}
	return sharedInstance;
}

@end
