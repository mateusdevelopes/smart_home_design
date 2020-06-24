import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_design/components/rolling_Switch.dart';
import 'package:smart_home_design/utils/constants.dart';

class OtherControlls extends StatelessWidget {
  OtherControlls({Key key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Temperatura atual',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Text('16.5',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.0,
                        )),
                    Text('°C',
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.0,
                        )),
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Power',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  )),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: LiteRollingSwitch(
                  value: true,
                  textOn: '',
                  textOff: '',
                  colorOn: Constants.purple,
                  colorOff: Colors.grey,
                  textSize: 10,
                  iconOn: Icons.power_settings_new,
                  iconOff: Icons.settings_power,
                  onChanged: (_) {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
