
#import "MXEPSGFactory.h"
#import "MXEPSG900913.h"

@implementation MXEPSGFactory
static NSMutableDictionary<NSString*, id<MXEPSGBoundBoxBuilder>>* builders ;
+ (void)initialize
{
    builders = [[NSMutableDictionary alloc] init];
    [builders setObject:[[MXEPSG900913 alloc]init] forKey:@"EPSG:900913"];
}
+(id<MXEPSGBoundBoxBuilder>) forSpec:(NSString*) spec
{
    return NULL;
}

@end
