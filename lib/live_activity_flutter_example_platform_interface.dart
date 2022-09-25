import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'live_activity_flutter_example_method_channel.dart';

abstract class LiveActivityFlutterExamplePlatform extends PlatformInterface {
  /// Constructs a LiveActivityFlutterExamplePlatform.
  LiveActivityFlutterExamplePlatform() : super(token: _token);

  static final Object _token = Object();

  static LiveActivityFlutterExamplePlatform _instance =
      MethodChannelLiveActivityFlutterExample();

  /// The default instance of [LiveActivityFlutterExamplePlatform] to use.
  ///
  /// Defaults to [MethodChannelLiveActivityFlutterExample].
  static LiveActivityFlutterExamplePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LiveActivityFlutterExamplePlatform] when
  /// they register themselves.
  static set instance(LiveActivityFlutterExamplePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> startProcess() {
    throw UnimplementedError('startProcess() has not been implemented.');
  }

  Future<void> endSucceedProcess() {
    throw UnimplementedError('endSucceed() has not been implemented.');
  }

  Future<void> endFailedProcess() {
    throw UnimplementedError('endFailed() has not been implemented.');
  }

  Future<void> updateProcess() {
    throw UnimplementedError('updateProcess() has not been implemented.');
  }
}
