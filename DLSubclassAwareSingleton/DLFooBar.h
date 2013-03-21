//
//  DLFooBar.h
//  SubclassAwareSingleton
//
//  Created by Vincent Esche on 3/20/13.
//  Copyright (c) 2013 Vincent Esche. All rights reserved.
//

#import "DLFoo.h"

@interface DLFooBar : DLFoo

// DLFooBar does not contain any implementation, yet [DLFooBar sharedDLFoo] returns an instance of 'DLFooBar', not 'DLFoo'.

@end
