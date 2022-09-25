import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:live_activity_flutter_example/live_activity_flutter_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _liveActivityFlutterExamplePlugin = LiveActivityFlutterExample();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await _liveActivityFlutterExamplePlugin.getPlatformVersion() ??
              'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _liveActivityFlutterExamplePlugin.startProccess();
                },
                child: Text("Start")),
            ElevatedButton(
                onPressed: () {
                  _liveActivityFlutterExamplePlugin.updateProcess();
                },
                child: Text("Update")),
            ElevatedButton(
                onPressed: () {
                  _liveActivityFlutterExamplePlugin.endSucceedProcess();
                },
                child: Text("End Succeed")),
            ElevatedButton(
                onPressed: () {
                  _liveActivityFlutterExamplePlugin.endFailedProcess();
                },
                child: Text("End Failed")),
            Center(
              child: Text('Running on: $_platformVersion\n'),
            ),
          ],
        ),
      ),
    );
  }
}
