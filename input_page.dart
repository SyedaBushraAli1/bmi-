import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'input_page.dart';

class InputPage extends StatefulWidget {
  @override
  InputPageState createState() => InputPageState();
}
class RepeatContainerCode extends StatelessWidget {

  RepeatContainerCode({required this.colors , this.cardwidget});
  final Color colors;
  final Widget cardwidget;


  @override
  Widget build (BuildContext  context){
    return Container(
      margin: EdgeInsets.all(15.0),
      child : cardwidget,
      decoration: BoxDecoration(
          color : Color(0xFF1D1E33)
          borderRadius: BorderRadius.circular(10.0),
    )
    );
  }
}
class InputPageState extends State<InputPage> {
  @override
  Widget build (BuildContext  context){
    return Scaffold(
        appBar: AppBar(
        title: Text('BMI CALCULATOR'),
    ),
      body: const Column(
      children: <Widget> [
        Expanded(child:Row(
         children: <Widget>[
           Expanded(child: new RepeatContainerCode(( colors : Color(blue),
    ),
    )
    )
    ]
    )
           Expanded(child: new RepeatContainerCode(( colors : Color(0xFFIE33),
             cardwidget : Column(),
              MainAxisAlignment: MainAxisAlignment.center,
              children:<Widgets>
           Icon(
             FontAwesomeicons.male,
              size: 80.0,
           SizedBox(
    height:15.0,
    Text(
    Text('MALE', style : TextStyle),
    FontSize:18.0 ,
    color : Color(0xFF8D8E98)
    )





    ),

    )

      );


    ],
    )

        Expanded(child:Row(
         children: <Widget>[
          Expanded(child: new RepeatContainerCode( colors : Color(0xFFIE33),

    )


    ]
    ),)
        Expanded(child: new RepeatContainerCode(( colors : Color(0xFFIE33),

    )
    ],
    ],
    )
    ],
  }
}
class RepeatTextIconWidget extends StatelessWidget {
  RepeatTextIconWidget({@required this.iconData , this.label}),
  final IconData iconData;
  final String label;
  @override
  Widget build (BuildContext  context){

  }
  Expanded(child: new RepeatTextIconWidget( colors : Color(0xFFIE33);
      return  Column(),
         MainAxisAlignment: MainAxisAlignment.center,
         children:<Widgets>
         Icon(
          FontAwesomeicons.male,
          size: 80.0,
          SizedBox(
           height:15.0,
            Text(
               Text('MALE', style : TextStyle),
                FontSize:18.0 ,
                color : Color(0xFF8D8E98),
  )



}