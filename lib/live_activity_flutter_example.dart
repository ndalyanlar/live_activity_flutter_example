// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'live_activity_flutter_example_method_channel.dart';
import 'live_activity_flutter_example_platform_interface.dart';

class LiveActivityFlutterExample {
  Future<String?> getPlatformVersion() {
    return LiveActivityFlutterExamplePlatform.instance.getPlatformVersion();
  }

  Future<void> startProccess() {
    return LiveActivityFlutterExamplePlatform.instance.startProcess();
  }

  Future<void> endSucceedProcess() {
    return LiveActivityFlutterExamplePlatform.instance.endSucceedProcess();
  }

  Future<void> endFailedProcess() {
    return LiveActivityFlutterExamplePlatform.instance.endFailedProcess();
  }

  Future<void> updateProcess() {
    return LiveActivityFlutterExamplePlatform.instance.updateProcess();
  }
}
