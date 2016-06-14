//  FISAppDelegate.m

#import "FISAppDelegate.h"


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

//Done 
-(NSArray*)allLocationNames
{
    NSMutableArray *newArray = [[NSMutableArray alloc]init];
    for(NSUInteger i = 0; i < [self.locations count]; i++)
    {
        FISLocation *locationName = self.locations[i];
        [newArray addObject: locationName.name]; 
    }
    return newArray;
}
//Done
-(FISLocation*)locationNamed: (NSString*)name
{
    for(NSUInteger i = 0; i < [self.locations count]; i++)
    {
        FISLocation *locationName = self.locations[i];
        if([locationName.name isEqualToString:name])
        {
            return locationName;
        }
    }
    return nil;
}
//
-(NSArray*) locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin
{
    NSMutableArray *newArray = [[NSMutableArray alloc]init];
    
    for (FISLocation *subElement in self.locations)
    {
        if (subElement.latitude >= latitude - margin && subElement.latitude <= latitude + margin &&
            subElement.longitude >= longitude - margin && subElement.longitude <= longitude + margin)
            {
                [newArray addObject:subElement];
            }
        
    }
    return newArray;
}

@end
