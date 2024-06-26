#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNVirtualRefereeServer : NSObject

+ (instancetype)shared;
- (void)configGzVRServer:(NSString *)vPort withSecurity:(NSString *)vSecu;

@end

NS_ASSUME_NONNULL_END
