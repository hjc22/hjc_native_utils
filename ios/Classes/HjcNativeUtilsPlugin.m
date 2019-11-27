#import "HjcNativeUtilsPlugin.h"
#if __has_include(<hjc_native_utils/hjc_native_utils-Swift.h>)
#import <hjc_native_utils/hjc_native_utils-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hjc_native_utils-Swift.h"
#endif

@implementation HjcNativeUtilsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHjcNativeUtilsPlugin registerWithRegistrar:registrar];
}
@end
