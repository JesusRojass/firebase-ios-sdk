//
//  FIRFooWrapper.m
//  Firebase
//
//  Created by Nick Cooke on 5/8/25.
//

#import "FIRFooWrapper.h"

@import FirebaseFirestoreInternalSwift;

@interface FIRFooWrapper ()
// private property. we call through to it's Swift impl
@property() FIRFoo *foo;
@end

@implementation FIRFooWrapper

- (instancetype)init {
  _foo = [[FIRFoo alloc] init];
}

- (void)doStuff {
  [self.foo doStuff];
}


@end
