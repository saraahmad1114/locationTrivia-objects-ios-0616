//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Flatiron School on 6/13/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

//DONE
//default initializer
- (instancetype)init {
    
    self = [self initWithName:@"" latitude:0 longitude:0];
    return self;
    
}
//Done
-(instancetype) initWithName:(NSString *) name latitude: (CGFloat) latitude longitude: (CGFloat) longitude
{
    self = [super init];
    if (self)
    {
        _name = name;
        _latitude = latitude;
        _longitude =longitude;
    }
    self.trivia = [[NSMutableArray alloc] init];
    return self;
}
//Done
-(NSString*)stringByTruncatingNameToLength: (NSUInteger)length
{
   if([self.name length] < length)
    {
        return self.name;
    }
    return [self.name substringToIndex:length]; 
}
//Done
-(BOOL) hasValidData
{
    if([self.name length] == 0 ||[self.name isEqualToString:@""])
    {
        return NO; 
    }
    else if (self.latitude < -90 || self.latitude > 90)
    {
        return NO;
    }
    else if(self.longitude <= -180 || self.longitude > 180)
    {
        return NO;
    }
    return YES;
}
//Done 
-(FISTrivium *) triviumWithMostLikes
{
    if([self.trivia count]== 0)
    {
        return nil;
    }
    NSSortDescriptor *likeDescriptor = [[NSSortDescriptor alloc] initWithKey:@"likes" ascending:NO];
    NSArray *newArrayDescending= @[likeDescriptor];
    [self.trivia sortUsingDescriptors:newArrayDescending];
    return self.trivia[0];
}


@end
