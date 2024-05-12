import 'package:bmi/constant file.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/container_file.dart';
import 'constant_file.dart';

class InputPage extends StatefulWidget {
  @override
  InputPageState createState() => InputPageState();
}

enum Gender {
  male,
  female,
}

class InputPageState extends State<InputPage> {
  Gender selectGender;
  int sliderHeight = 180;
  int sliderWeight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    child: RepeatContainerCode(
                      colors: selectGender == Gender.male ? activeColor : deActiveColor,
                      cardwidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.male,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    child: RepeatContainerCode(
                      colors: selectGender == Gender.female ? activeColor : deActiveColor,
                      cardwidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.female,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RepeatContainerCode(
              colors: Color(0xFF1D1E33),
              cardwidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    sliderHeight.toString(),
                    style: kNumberStyle,
                  ),
                  Text(
                    "HEIGHT",
                    style: kLabelStyle,
                  ),
                  Slider(
                    value: sliderHeight.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        sliderHeight = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    cardwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelStyle,
                        ),
                        Text(
                          sliderWeight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
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