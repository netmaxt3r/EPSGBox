
#import "MXEPSGFactory.h"
#import "MXEPSG900913.h"
#import "MXEPSG4326.h"

@implementation MXEPSGFactory
static NSMutableDictionary<NSString*, id<MXEPSGBoundBoxBuilder>>* builders ;

+ (void)initialize
{
    builders = [[NSMutableDictionary alloc] init];
    [builders setObject:[[MXEPSG900913 alloc]init] forKey:@"EPSG:900913"];
    [builders setObject:[[MXEPSG4326 alloc]init] forKey:@"EPSG:4326"];
}

+(id<MXEPSGBoundBoxBuilder>) forSpec:(NSString*) spec
{
    
    return [builders objectForKey:spec];
}

+(void) addBuilder:(id<MXEPSGBoundBoxBuilder>) builder ForSpec:(NSString*) spec
{
    [builders setObject:builder forKey:spec];
}

+(void) removeBuilderForSpec:(NSString*) spec
{
    [builders removeObjectForKey:spec];
}

@end
