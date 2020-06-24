import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeviceItem extends StatelessWidget {
  DeviceItem({Key key, this.onTap, this.deviceName, this.icon});
  final onTap;
  final deviceName;
  final icon;

  _energyIcon() {
    return Container(
      height: 50,
      width: 50,
      child: Center(
        child: FaIcon(
          icon,
          size: 22,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(90.0),
          border: Border.all(
              width: 0.5, color: Colors.black26, style: BorderStyle.solid)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 100,
      child: Column(
        children: <Widget>[
          _energyIcon(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(deviceName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                )),
          ),
        ],
      ),
    );
  }
}
