import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intelligentstudysuite/Constrains/ThemeData.dart';
import 'package:intelligentstudysuite/Models/AlarmInfo.dart';
import 'package:intelligentstudysuite/Screens/Helpers/Data.dart';
import 'package:intelligentstudysuite/Screens/Helpers/alarm_helper.dart';
import 'package:intelligentstudysuite/main.dart';
import 'package:intl/intl.dart';

class AlramPage extends StatefulWidget {
  @override
  _AlramPageState createState() => _AlramPageState();
}

class _AlramPageState extends State<AlramPage> {
  DateTime _alarmTime;
  String _alarmTimeString;
  AlarmHelper _alarmHelper = AlarmHelper();
  Future<List<AlarmInfo>> _alarms;

  @override
  void initState() {
    _alarmTime = DateTime.now();
    _alarmHelper.initializeDatabase().then((value) {
      print('------database intialized');
      loadAlarms();
    });
    super.initState();
  }

  void loadAlarms() {
    _alarms = _alarmHelper.getAlarms();
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "This Page Is in Construction",
        style: TextStyle(fontSize: 25),
      ),
    )
        //   padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Text(
        //         "Alarm",
        //         style: TextStyle(
        //             fontFamily: 'avenir',
        //             fontSize: 24,
        //             fontWeight: FontWeight.w700,
        //             color: Colors.black),
        //       ),
        //       Expanded(
        //         child: FutureBuilder(
        //           future: _alarms,
        //           builder: (context, snapshot) {
        //             if (snapshot.hasData) {
        //               return ListView(
        //                 children: snapshot.data.map<Widget>((alarm) {
        //                   var alarmTime =
        //                       DateFormat('hh:mm aa').format(alarm.alarmDateTime);
        //                   var gradientColor = GradientTemplate
        //                       .gradientTemplate[alarm.gradientColorIndex].colors;
        //                   return Container(
        //                     margin: EdgeInsets.only(bottom: 10),
        //                     padding:
        //                         EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //                     // height: 150,
        //                     decoration: BoxDecoration(
        //                         gradient: LinearGradient(
        //                             colors: [Colors.pink, Colors.red]),
        //                         borderRadius: BorderRadius.circular(10)),
        //                     child: Column(
        //                       // mainAxisAlignment: MainAxisAlignment.end,
        //                       children: <Widget>[
        //                         Row(
        //                           mainAxisAlignment:
        //                               MainAxisAlignment.spaceBetween,
        //                           children: <Widget>[
        //                             Row(
        //                               children: <Widget>[
        //                                 Icon(
        //                                   Icons.label,
        //                                   color: Colors.white,
        //                                 ),
        //                                 SizedBox(
        //                                   width: 10,
        //                                 ),
        //                                 Text(
        //                                   alarm.title,
        //                                   style: TextStyle(
        //                                       fontSize: 22,
        //                                       fontWeight: FontWeight.w700,
        //                                       color: Colors.white,
        //                                       fontFamily: 'avenir'),
        //                                 )
        //                               ],
        //                             ),
        //                             Switch(
        //                               onChanged: (bool value) {},
        //                               value: true,
        //                               activeColor: Colors.white,
        //                             )
        //                           ],
        //                         ),
        //                         Row(
        //                           // mainAxisAlignment: MainAxisAlignment.center,
        //                           children: <Widget>[
        //                             Text(
        //                               "Mon - Fri",
        //                               style: TextStyle(
        //                                   fontSize: 18, color: Colors.white),
        //                             ),
        //                           ],
        //                         ),
        //                         Row(
        //                           mainAxisAlignment:
        //                               MainAxisAlignment.spaceBetween,
        //                           children: <Widget>[
        //                             Text(
        //                               alarmTime,
        //                               style: TextStyle(
        //                                   fontSize: 24,
        //                                   fontFamily: 'avenie',
        //                                   fontWeight: FontWeight.w700,
        //                                   color: Colors.white),
        //                             ),
        //                             IconButton(
        //                               icon: Icon(Icons.delete),
        //                               color: Colors.white,
        //                               onPressed: () {
        //                                 _alarmHelper.delete(alarm.id);
        //                               },
        //                             ),
        //                           ],
        //                         )
        //                       ],
        //                     ),
        //                   );
        //                 }).followedBy([
        //                   if (alarms.length < 20)
        //                     {
        //                       DottedBorder(
        //                         strokeWidth: 3,
        //                         dashPattern: [5, 4],
        //                         color: Colors.black,
        //                         borderType: BorderType.RRect,
        //                         radius: Radius.circular(24),
        //                         child: InkWell(
        //                           onTap: () {
        //                             _alarmTimeString = DateFormat('HH:mm')
        //                                 .format(DateTime.now());
        //                             showModalBottomSheet(
        //                               useRootNavigator: true,
        //                               context: context,
        //                               clipBehavior: Clip.antiAlias,
        //                               shape: RoundedRectangleBorder(
        //                                 borderRadius: BorderRadius.vertical(
        //                                   top: Radius.circular(24),
        //                                 ),
        //                               ),
        //                               builder: (context) {
        //                                 return StatefulBuilder(
        //                                   builder: (context, setModalState) {
        //                                     return Container(
        //                                       padding: const EdgeInsets.all(32),
        //                                       child: Column(
        //                                         children: [
        //                                           FlatButton(
        //                                             onPressed: () async {
        //                                               var selectedTime =
        //                                                   await showTimePicker(
        //                                                 context: context,
        //                                                 initialTime:
        //                                                     TimeOfDay.now(),
        //                                               );
        //                                               if (selectedTime != null) {
        //                                                 final now =
        //                                                     DateTime.now();
        //                                                 var selectedDateTime =
        //                                                     DateTime(
        //                                                         now.year,
        //                                                         now.month,
        //                                                         now.day,
        //                                                         selectedTime.hour,
        //                                                         selectedTime
        //                                                             .minute);
        //                                                 _alarmTime =
        //                                                     selectedDateTime;
        //                                                 setModalState(() {
        //                                                   _alarmTimeString =
        //                                                       selectedTime
        //                                                           .toString();
        //                                                 });
        //                                               }
        //                                             },
        //                                             child: Text(
        //                                               _alarmTimeString,
        //                                               style:
        //                                                   TextStyle(fontSize: 32),
        //                                             ),
        //                                           ),
        //                                           ListTile(
        //                                             title: Text('Repeat'),
        //                                             trailing: Icon(
        //                                                 Icons.arrow_forward_ios),
        //                                           ),
        //                                           ListTile(
        //                                             title: Text('Sound'),
        //                                             trailing: Icon(
        //                                                 Icons.arrow_forward_ios),
        //                                           ),
        //                                           ListTile(
        //                                             title: Text('Title'),
        //                                             trailing: Icon(
        //                                                 Icons.arrow_forward_ios),
        //                                           ),
        //                                           FloatingActionButton.extended(
        //                                             onPressed: () async {
        //                                               DateTime
        //                                                   scheduleAlarmDateTime;
        //                                               if (_alarmTime.isAfter(
        //                                                   DateTime.now()))
        //                                                 scheduleAlarmDateTime =
        //                                                     _alarmTime;
        //                                               else
        //                                                 scheduleAlarmDateTime =
        //                                                     _alarmTime.add(
        //                                                         Duration(
        //                                                             days: 1));

        //                                               var alarmInfo = AlarmInfo(
        //                                                 alarmDateTime:
        //                                                     scheduleAlarmDateTime,
        //                                                 gradientColorIndex:
        //                                                     alarms.length,
        //                                                 title: 'alarm',
        //                                               );
        //                                               _alarmHelper
        //                                                   .insertAlarm(alarmInfo);
        //                                               // scheduleAlarm(
        //                                               //     scheduleAlarmDateTime);
        //                                             },
        //                                             icon: Icon(Icons.alarm),
        //                                             label: Text('Save'),
        //                                           ),
        //                                         ],
        //                                       ),
        //                                     );
        //                                   },
        //                                 );
        //                               },
        //                             );
        //                           },
        //                           child: Container(
        //                             width: double.infinity,
        //                             decoration: BoxDecoration(
        //                                 color: CustomColors.clockBG,
        //                                 borderRadius: BorderRadius.circular(24)),
        //                             height: 100,
        //                             child: Column(
        //                               mainAxisAlignment: MainAxisAlignment.center,
        //                               children: <Widget>[
        //                                 Image.asset(
        //                                   "assets/add_alarm.png",
        //                                   scale: 1.5,
        //                                 ),
        //                                 SizedBox(
        //                                   height: 8.0,
        //                                 ),
        //                                 Text(
        //                                   "Add Alarm",
        //                                   style: TextStyle(
        //                                       fontSize: 24,
        //                                       fontFamily: 'avenie',
        //                                       fontWeight: FontWeight.w700,
        //                                       color: Colors.white),
        //                                 ),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       )
        //                     }
        //                   else
        //                     {
        //                       Text('Only 5 alarms allowed!'),
        //                     }
        //                 ]).toList(),
        //               );
        //             } else {
        //               return Center(
        //                   child: Text('Loading..',
        //                       style: TextStyle(color: Colors.white)));
        //             }
        //           },
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}

void scheduleAlarm(DateTime scheduledNotificationDateTime) async {
  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'alarm_notif',
    'alarm_notif',
    'Channel for Alarm notification',
    icon: 'codex_logo',
    sound: RawResourceAndroidNotificationSound('a_long_cold_sting'),
    largeIcon: DrawableResourceAndroidBitmap('codex_logo'),
  );

  var iOSPlatformChannelSpecifics = IOSNotificationDetails(
      sound: 'a_long_cold_sting.wav',
      presentAlert: true,
      presentBadge: true,
      presentSound: true);
  var platformChannelSpecifics = NotificationDetails(
      androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.schedule(
      0,
      'Office',
      'Good morning! Time for office.',
      scheduledNotificationDateTime,
      platformChannelSpecifics);
}
