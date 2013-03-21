# DLSubclassAwareSingleton

**DLSubclassAwareSingleton** is the result of a random brain fart turned into a basic yet usable proof of concept:  

An **Objective-C category** on `NSObject` implementing the common **singleton pattern** with the addition of allowing **subclasses to provide their own shared instance without any additional code**.

*Word of caution: Being a common code spell think twice before using a singleton.*

**Anyway. A code snippet probably says more than a thousand words:**

	#import <Foundation/Foundation.h>
	
	#import "DLFoo.h"
	#import "DLFooBar.h"
	
	int main(int argc, const char * argv[]) {
	
		@autoreleasepool {
		    
			// DLFooBar inherits from DLFoo and doesn't
			// implement any singleton logic of its own.
		    
		    // Next line returns instance of class DLFoo:
			DLFoo *foo = [DLFoo sharedFoo];
			
			// Next line returns instance of class DLFooBar:
			DLFooBar *foobar = [DLFooBar sharedFoo]; 
		    
		}
	    return 0;
	}