import 'package:flutter/material.dart';
import 'package:smart_home_design/components/common_button.dart';
import 'package:smart_home_design/components/other_controlls.dart';
import 'package:smart_home_design/components/simple_tab.dart';
import 'package:smart_home_design/components/temperature_controll.dart';
import 'package:smart_home_design/components/device_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailRoomPage extends StatefulWidget {
  DetailRoomPage({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  _DetailRoomPageState createState() => _DetailRoomPageState();
}

class _DetailRoomPageState extends State<DetailRoomPage> {
  final list = [
    {
      "device_name": 'Ar-Condicionado.',
      "icon": FontAwesomeIcons.snowflake,
    },
    {
      "device_name": 'jbl',
      "icon": FontAwesomeIcons.music,
    },
    {
      "device_name": 'Ventilador',
      "icon": FontAwesomeIcons.fan,
    },
    {
      "device_name": 'Sony hue',
      "icon": FontAwesomeIcons.lightbulb,
    },
    {
      "device_name": 'Camera',
      "icon": FontAwesomeIcons.camera,
    },
    {
      "device_name": 'Quintal',
      "icon": FontAwesomeIcons.fan,
    },
    {
      "device_name": 'Escritório',
      "icon": FontAwesomeIcons.fan,
    },
  ];

  @override
  Widget build(BuildContext context) {
    //double statusWidth = MediaQuery.of(context).padding.top;
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          SimpleTab(title: widget.title),
          Container(
            padding: EdgeInsets.only(top: 140),
            child: Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return DeviceItem(
                    onTap: () {},
                    deviceName: list[index]['device_name'],
                    icon: list[index]['icon'],
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 250),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 70, 60, 30),
                    child: TemperatureControll(),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 60, 24, 20),
                    child: OtherControlls(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 24, right: 24),
                    child: CommonButton(
                      text: 'Definir temperatura',
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

// Container(
//                   height: 90,
//                   child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: list.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return DeviceItem(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => DetailRoomPage(
//                                 title: list[index]['device_name'],
//                               ),
//                             ),
//                           );
//                         },
//                         deviceName: list[index]['device_name'],
//                         icon: list[index]['icon'],
//                       );
//                     },
//                   ),
//                 ),
