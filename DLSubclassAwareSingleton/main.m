//
//  main.m
//  SubclassAwareSingleton
//
//  Created by Vincent Esche on 3/20/13.
//  Copyright (c) 2013 Vincent Esche. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DLFoo.h"
#import "DLFooBar.h"

int main(int argc, const char * argv[]) {

	@autoreleasepool {
		
		DLFoo *foo = [DLFoo sharedFoo];
		NSLog(@"[DLFoo sharedDLFoo] returned instance of class: '%@' at location: %p", [foo class], foo);
		NSLog(@"Calling [DLFoo sharedDLFoo] again returns same instance at same location: %p", [DLFoo sharedFoo]);
		
		DLFooBar *foobar = [DLFooBar sharedFoo];
		NSLog(@"[DLFooBar sharedDLFoo] returned instance of class: '%@' at location: %p", [foobar class], foobar);
		NSLog(@"Calling [DLFooBar sharedDLFoo] again returns same instance at same location: %p", [DLFooBar sharedFoo]);
		
		/*
		 Produced console log:
		 
		 # [DLFoo sharedDLFoo] returned instance of class: 'DLFoo' at location: 0x1001084c0
		 # Calling [DLFoo sharedDLFoo] again returns same instance at same location: 0x1001084c0
		 
		 # [DLFooBar sharedDLFoo] returned instance of class: 'DLFooBar' at location: 0x100303570
		 # Calling [DLFooBar sharedDLFoo] again returns same instance at same location: 0x100303570
		 
		 */
		
	}
	return 0;
}

