
@protocol MXEPSGBoundBoxBuilder <NSObject>

@required
- (NSArray<NSNumber*>*) boundBoxForX:(int) x Y:(int) y Zoom:(int) zoom;

@end

@interface MXEPSGFactory : NSObject

+(id<MXEPSGBoundBoxBuilder>) forSpec:(NSString*) spec;

@end
