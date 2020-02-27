library start_activity;

import 'package:get_version/get_version.dart';
import 'package:intent/extra.dart';
import 'package:intent/flag.dart';
import 'package:intent/intent.dart';

void startActivity(String activityClassName, {String action}) async {
  final packageName = await GetVersion.appID;

  Intent()
    ..setAction(action)
    ..putExtra(Extra.EXTRA_PACKAGE_NAME, packageName)
    ..addFlag(Flag.FLAG_ACTIVITY_NEW_TASK)
    ..startActivity();
}

void startFlutterActivity(
  String activityClassName, {
  String action,
  /*String initialRoute*/
}) async {
  final packageName = await GetVersion.appID;

  Intent()
    ..setAction(action)
    ..putExtra(Extra.EXTRA_PACKAGE_NAME, packageName)
    ..addFlag(Flag.FLAG_ACTIVITY_NEW_TASK)
    ..startActivity();
}
