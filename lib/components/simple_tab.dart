import 'package:flutter/material.dart';

class SimpleTab extends StatelessWidget {
  SimpleTab({@required this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    double statusWidth = MediaQuery.of(context).padding.top;
    return Column(
      children: <Widget>[
        Container(
          height: statusWidth,
        ),
        Column(
        children: <Widget>[
          Container(
            height: 100,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.0,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      ],
    );
  }
}
