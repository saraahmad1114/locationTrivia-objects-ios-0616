//
//  FISTrivium.m
//  locationTrivia-Objects
//
//  Created by Flatiron School on 6/13/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISTrivium.h"

@implementation FISTrivium
//Done
//default initializer 
-(instancetype)init
{
    self = [self initWithContent:@"" likes:0];
    return self;
}
//Done 
//Designated initializer
-(instancetype)initWithContent:(NSString*)content likes:(NSUInteger)likes
{
    self = [super init];
    if (self)
    {
        _content = content;
        _likes = likes;
    }
    return self;
}

@end
