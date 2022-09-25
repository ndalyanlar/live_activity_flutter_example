#import "LiveActivityFlutterExamplePlugin.h"
#if __has_include(<live_activity_flutter_example/live_activity_flutter_example-Swift.h>)
#import <live_activity_flutter_example/live_activity_flutter_example-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "live_activity_flutter_example-Swift.h"
#endif

@implementation LiveActivityFlutterExamplePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    if (@available(iOS 16.0, *)) {
        [SwiftLiveActivityFlutterExamplePlugin registerWithRegistrar:registrar];
    } else {
        // Fallback on earlier versions
    }
}
@end
