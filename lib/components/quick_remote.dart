import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class QuickRemote extends StatelessWidget {
  const QuickRemote({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingSheet(
      elevation: 8,
      cornerRadius: 16,
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [120, 500, double.infinity],
        positioning: SnapPositioning.pixelOffset,
      ),
      builder: (context, state) {
        return Container(
          height: 400,
          child: Center(
            child: Container(
              decoration: BoxDecoration(color: Color(0xFF422889)),
            ),
          ),
        );
      },
      headerBuilder: (context, state) {
        return Container(
            height: 130,
            width: double.infinity,
            color: Color(0xFF422889),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(130, 20, 130, 10),
                  child: Center(
                    child: Container(
                      height: 4,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Acesso rápido',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21.0,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.0,
                            )),
                        Text(
                            'Tenha acesso rápido aos controles dos aparelhos sem fio.',
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            )),
                      ],
                    ))
              ],
            ));
      },
      footerBuilder: (context, state) {
        return Container(
          height: 70,
          width: double.infinity,
          color: Color(0xFF422889),
          alignment: Alignment.center,
          child: Container(
            height: 30,
          ),
        );
      },
    );
  }
}
