import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_home_design/utils/constants.dart';

class LocalItem extends StatelessWidget {
  LocalItem(
      {@required this.local_name, this.icon, this.num_device, this.onTap});
  final local_name;
  final icon;
  final int num_device;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              width: 1, color: Colors.black12, style: BorderStyle.solid)),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 20,
                  left: 20,
                  child: SvgPicture.asset(
                    icon,
                    height: 40,
                    width: 40,
                    color: Constants.orange,
                  )),
              Positioned(
                  bottom: 20,
                  left: 20,
                  right: 18,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('$local_name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.0,
                          )),
                      Text('$num_device aparelho(s)',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 11.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          )),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
