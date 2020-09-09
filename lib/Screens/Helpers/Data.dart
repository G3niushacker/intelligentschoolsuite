import 'package:intelligentstudysuite/Models/AlarmInfo.dart';

List<AlarmInfo> alarms = [
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 1)),
      title: 'School',
      gradientColorIndex: 0),
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 2)),
      title: 'Sport',
      gradientColorIndex: 1),
];
