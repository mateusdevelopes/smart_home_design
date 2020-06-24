import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UsageValue extends StatelessWidget {
  UsageValue({@required this.value});
  final double value;

  _energyIcon() {
    return Container(
      height: 50,
      width: 50,
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.bolt,
          size: 22,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(90.0),
          border: Border.all(
              width: 1, color: Colors.black38, style: BorderStyle.solid)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _energyIcon(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('$value',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.0,
                        )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text('Kwh',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.0,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Text('Valor consumido hojé',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
