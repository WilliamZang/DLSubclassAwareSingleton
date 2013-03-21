//
//  NSObject+DLSubclassAwareSingleton.h
//  SubclassAwareSingleton
//
//  Created by Vincent Esche on 3/20/13.
//  Copyright (c) 2013 Vincent Esche. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DLSubclassAwareSingleton)

+ (instancetype)sharedInstance_dl;

@end
