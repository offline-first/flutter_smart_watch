#import "FlutterSmartWatchIosPlugin.h"
#if __has_include(<flutter_smart_watch_ios/flutter_smart_watch_ios-Swift.h>)
#import <flutter_smart_watch_ios/flutter_smart_watch_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_smart_watch_ios-Swift.h"
#endif

@implementation FlutterSmartWatchIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterSmartWatchIosPlugin registerWithRegistrar:registrar];
}
@end
