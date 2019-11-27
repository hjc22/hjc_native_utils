import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hjc_native_utils/hjc_native_utils.dart';

void main() {
  const MethodChannel channel = MethodChannel('hjc_native_utils');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await HjcNativeUtils.platformVersion, '42');
  });
}
