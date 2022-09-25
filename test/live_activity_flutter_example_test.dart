import 'package:flutter_test/flutter_test.dart';
import 'package:live_activity_flutter_example/live_activity_flutter_example.dart';
import 'package:live_activity_flutter_example/live_activity_flutter_example_platform_interface.dart';
import 'package:live_activity_flutter_example/live_activity_flutter_example_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLiveActivityFlutterExamplePlatform
    with MockPlatformInterfaceMixin
    implements LiveActivityFlutterExamplePlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> endFailedProcess() {
    // TODO: implement endFailedProcess
    throw UnimplementedError();
  }

  @override
  Future<void> endSucceedProcess() {
    // TODO: implement endSucceedProcess
    throw UnimplementedError();
  }

  @override
  Future<void> startProcess() {
    // TODO: implement startProcess
    throw UnimplementedError();
  }

  @override
  Future<void> updateProcess() {
    // TODO: implement updateProcess
    throw UnimplementedError();
  }
}

void main() {
  final LiveActivityFlutterExamplePlatform initialPlatform =
      LiveActivityFlutterExamplePlatform.instance;

  test('$MethodChannelLiveActivityFlutterExample is the default instance', () {
    expect(initialPlatform,
        isInstanceOf<MethodChannelLiveActivityFlutterExample>());
  });

  test('getPlatformVersion', () async {
    LiveActivityFlutterExample liveActivityFlutterExamplePlugin =
        LiveActivityFlutterExample();
    MockLiveActivityFlutterExamplePlatform fakePlatform =
        MockLiveActivityFlutterExamplePlatform();
    LiveActivityFlutterExamplePlatform.instance = fakePlatform;

    expect(await liveActivityFlutterExamplePlugin.getPlatformVersion(), '42');
  });
}
