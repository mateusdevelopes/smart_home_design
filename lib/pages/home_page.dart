import 'package:flutter/material.dart';
import 'package:smart_home_design/components/local_item.dart';
import 'package:smart_home_design/components/quick_remote.dart';
import 'package:smart_home_design/components/thumbnail_tab.dart';
import 'package:smart_home_design/components/usage_value.dart';
import 'package:smart_home_design/pages/detail_room_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final list = [
    {
      "local_name": 'Quarto',
      "icon": 'assets/icons/009-bedroom.svg',
      "num_device": 3,
    },
    {
      "local_name": 'Banheiro',
      "icon": 'assets/icons/005-bathtub.svg',
      "num_device": 1,
    },
    {
      "local_name": 'Sala de Jantar',
      "icon": 'assets/icons/026-dining-table.svg',
      "num_device": 4,
    },
    {
      "local_name": 'Sala de Estar',
      "icon": 'assets/icons/015-sofa.svg',
      "num_device": 5,
    },
    {
      "local_name": 'Cozinha',
      "icon": 'assets/icons/034-kitchen.svg',
      "num_device": 2,
    },
    {
      "local_name": 'Quintal',
      "icon": 'assets/icons/033-flowerpot.svg',
      "num_device": 2,
    },
    {
      "local_name": 'Escritório',
      "icon": 'assets/icons/020-desk.svg',
      "num_device": 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ThumbnailTab(
                title: 'Bem vindo de volta,',
                name: 'Mateus Lopes',
                image: 'assets/profile.jpg',
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 170, 24, 30),
                child: UsageValue(
                  value: 20.3,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 260, 0, 0),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: list.length,
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 160),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 30.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return LocalItem(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailRoomPage(title: list[index]['local_name'],),
                          ),
                        );
                      },
                      local_name: list[index]['local_name'],
                      icon: list[index]['icon'],
                      num_device: list[index]['num_device'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        QuickRemote(),
      ],
    ));
  }
}

