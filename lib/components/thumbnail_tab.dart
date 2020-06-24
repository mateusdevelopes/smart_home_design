import 'package:flutter/material.dart';

class ThumbnailTab extends StatelessWidget {
  ThumbnailTab({@required this.title, this.name, this.image});
  final title;
  final name;
  final image;

  @override
  Widget build(BuildContext context) {
    double statusWidth = MediaQuery.of(context).padding.top;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: statusWidth,
            color: Colors.white,
          ),
          Container(
            height: 100,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(title,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                              )),
                          Text(name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 35.0,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1.0,
                              )),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            image,
                            height: 58,
                            width: 58,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
