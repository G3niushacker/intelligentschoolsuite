import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:intelligentstudysuite/Screens/Alarm.dart';
import 'package:intelligentstudysuite/Screens/CommunityRadio.dart';
import 'package:intelligentstudysuite/Screens/CutDownTim.dart';
import 'package:intelligentstudysuite/Screens/Torch.dart';
import 'package:intelligentstudysuite/Screens/StopWatch.dart';
import 'package:intelligentstudysuite/Screens/Calculator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intelligentstudysuite/Screens/Weather.dart';
import 'package:intelligentstudysuite/Screens/Translator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _launchURL() async {
    const url = 'https://www.tnc.edu.za/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget imageCoursel = Container(
    height: 150,
    child: Carousel(
      dotBgColor: Colors.transparent,
      dotColor: Colors.transparent,
      showIndicator: false,
      boxFit: BoxFit.cover,
      radius: Radius.circular(20),
      images: [
        AssetImage("assets/slide1.JPG"),
        AssetImage("assets/slide2.JPG"),
        AssetImage("assets/slide3.JPG"),
        AssetImage("assets/slide4.JPG"),
        AssetImage("assets/slide5.JPG"),
        AssetImage("assets/slide6.JPG"),
        AssetImage("assets/slide7.JPG"),
      ],
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          color: Color(0xff3C3C3C),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlramPage()));
                },
                leading: Icon(
                  Icons.alarm,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  "Alarm",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Torch()));
                },
                leading: Icon(
                  Icons.lightbulb_outline,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  "Torch",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StopWatch()));
                },
                leading: Icon(
                  Icons.watch_later,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  "StopWatch",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CutDownTim()));
                },
                leading: Icon(
                  Icons.timer,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  "Countdown",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Calculator()));
                },
                leading: Icon(
                  Icons.device_hub,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  "Calculator",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Translator()));
                },
                leading: Icon(
                  Icons.language,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  "Translator",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Weather()));
                },
                leading: Icon(
                  Icons.surround_sound,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  "Weather",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CommunityRadio()));
                },
                leading: Icon(
                  Icons.radio,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  "Community Radio",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.content_copy,
                  size: 25,
                  color: Colors.white,
                ),
                title: Text(
                  "Learning Essential",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff2C2C2C),
        title: Text(
          "Intelligent Study Suite",
          style: TextStyle(fontFamily: 'avenie'),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: _launchURL,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Color(0xff2C2C2C),
                    borderRadius: BorderRadius.circular(20)),
                child: imageCoursel,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Favourites",
                  style: TextStyle(fontSize: 18, fontFamily: 'avenie'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Torch()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 8.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 15, bottom: 15),
                        child: Text(
                          "Torch",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AlramPage()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 8.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 15, bottom: 15),
                        child: Text(
                          "Alarm",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CutDownTim()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 8.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 15, bottom: 15),
                        child: Text(
                          "Countdown Timer",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Translator()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 8.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 15, bottom: 15),
                        child: Text(
                          "Translate",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 8.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 15, bottom: 15),
                        child: Text(
                          "Learning Essentials",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
