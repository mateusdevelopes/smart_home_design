import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:smart_home_design/utils/constants.dart';

class TemperatureControll extends StatelessWidget {
  TemperatureControll({Key key, this.temp, this.innerInfo});
  final double temp;
  final InnerWidget innerInfo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Center(
          child: Material(
            elevation: 10,
            shadowColor: Constants.purple,
            borderRadius: BorderRadius.circular(100),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),
        ),
        Center(
          child: SleekCircularSlider(
            onChangeStart: (double value) {},
            onChangeEnd: (double value) {},
            innerWidget: innerInfo,
            min: 9,
            max: 36,
            initialValue: 12,
            appearance: CircularSliderAppearance(
                customWidths: CustomSliderWidths(
                    trackWidth: 1, progressBarWidth: 4, shadowWidth: 0),
                customColors: CustomSliderColors(
                  trackColor: Colors.black12,
                  progressBarColor: Constants.purple,
                  shadowColor: Constants.purple,
                  shadowMaxOpacity: 0, //);
                  shadowStep: 20,
                ),
                infoProperties: InfoProperties(
                    mainLabelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w800),
                    modifier: (double value) {
                      final temp = value.toInt();
                      return '$temp ˚C';
                    }),
                startAngle: 90,
                angleRange: 380,
                size: 260.0,
                animationEnabled: true),
          ),
        ),
      ],
    );
  }
}
