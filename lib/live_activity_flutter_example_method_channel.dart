import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'live_activity_flutter_example_platform_interface.dart';

/// An implementation of [LiveActivityFlutterExamplePlatform] that uses method channels.
class MethodChannelLiveActivityFlutterExample
    extends LiveActivityFlutterExamplePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('live_activity_flutter_example');
  // final startChannel = const MethodChannel('live_activity_start');
  // final endSucceedChannel =
  //     const MethodChannel('live_activity_end_with_succeed');
  // final endFailedChannel = const MethodChannel('live_activity_end_with_failed');
  // final updateChannel = const MethodChannel('live_activity_update');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> startProcess() async {
    await methodChannel.invokeMethod('start');
  }

  @override
  Future<void> endSucceedProcess() async {
    await methodChannel.invokeMethod('end_with_succeed');
  }

  @override
  Future<void> endFailedProcess() async {
    await methodChannel.invokeMethod('end_with_failed');
  }

  @override
  Future<void> updateProcess() async {
    await methodChannel.invokeMethod('update');
  }
}
