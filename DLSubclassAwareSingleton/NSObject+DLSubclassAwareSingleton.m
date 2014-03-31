//
//  NSObject+DLSubclassAwareSingleton.m
//  SubclassAwareSingleton
//
//  Created by Vincent Esche on 3/20/13.
//  Copyright (c) 2013 Vincent Esche. All rights reserved.
//

#import "NSObject+DLSubclassAwareSingleton.h"

@implementation NSObject (DLSubclassAwareSingleton)

+ (instancetype)sharedInstance_dl {
	// Allows subclasses to have their very own singleton instance
	// accessed thru the very same generic singleton method.
	static NSMutableDictionary *instancesByClass = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		instancesByClass = [NSMutableDictionary dictionary];
	});
	id sharedInstance = nil;
	@synchronized(self) {
		sharedInstance = instancesByClass[(id<NSCopying>)self];
		if (!sharedInstance) {
			sharedInstance = [[self alloc] init];
			instancesByClass[(id<NSCopying>)self] = sharedInstance;
		}
	}
	return sharedInstance;
}

@end
