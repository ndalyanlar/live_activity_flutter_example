import Flutter
import UIKit
import ActivityKit



@available(iOS 16.0, *)
public class SwiftLiveActivityFlutterExamplePlugin: NSObject,FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "live_activity_flutter_example", binaryMessenger: registrar.messenger())
        
        let instance = SwiftLiveActivityFlutterExamplePlugin()
        
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    static var helper: LiveActivityHelper = LiveActivityHelper()
        
        
     
    
        
        
        
        
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
            
            
            
            if(call.method == "getPlatformVersion"){
                result("iOS " + UIDevice.current.systemVersion)
            }
            
            if(call.method == "start"){
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2,
                                              execute:{
                    SwiftLiveActivityFlutterExamplePlugin.helper.start()
                })
            }
            
            
            else if(call.method == "update"){
                DispatchQueue
                    .main
                    .asyncAfter(deadline: .now() + 2,
                                execute: {
                        SwiftLiveActivityFlutterExamplePlugin.helper.update()
                    })
                
            }
            
            else if(call.method == "end_with_succeed"){
                
                
                DispatchQueue
                    .main
                    .asyncAfter(deadline: .now() + 2,
                                execute: {
                        SwiftLiveActivityFlutterExamplePlugin.helper.end(with: .succeed)
                    })
            }
            
            else if(call.method == "end_with_failed"){
                DispatchQueue
                    .main
                    .asyncAfter(deadline: .now() + 2,
                                execute: {
                        SwiftLiveActivityFlutterExamplePlugin.helper.end(with: .failed)
                    })
            }
            
            
            
        }
}
