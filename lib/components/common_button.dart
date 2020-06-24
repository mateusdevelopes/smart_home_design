import 'package:flutter/material.dart';
import 'package:smart_home_design/utils/constants.dart';

class CommonButton extends StatelessWidget {
  CommonButton({Key key, this.onPressed, this.text});
  final onPressed;
  final text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 60,
      child: RaisedButton(
        color: Constants.purple,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.0,
            )),
      ),
    );
  }
}
