#import "MXEPSG900913.h"

@implementation MXEPSG900913

static double MapX = -20037508.34789244;
static double MapY = 20037508.34789244;
static double FULL = 20037508.34789244 * 2;

- (NSArray<NSNumber*> *)boundBoxForX:(int)x Y:(int)y Zoom:(int)zoom {
    double tile = FULL / pow(2.0, (double)zoom);
    
    NSArray *result  =[[NSArray alloc] initWithObjects:
                       [NSNumber numberWithDouble:MapX + (double)x * tile ],
                       [NSNumber numberWithDouble:MapY - (double)(y+1) * tile ],
                       [NSNumber numberWithDouble:MapX + (double)(x+1) * tile ],
                       [NSNumber numberWithDouble:MapY - (double)y * tile ],
                       nil];
    
    return result;
}

@end
