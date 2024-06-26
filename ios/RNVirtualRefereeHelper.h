#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNVirtualRefereeHelper : UIResponder

+ (instancetype)virtualReferee_shared;
- (BOOL)virtualReferee_tryThisWay;
- (UIInterfaceOrientationMask)virtualReferee_getOrientation;
- (UIViewController *)virtualReferee_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
