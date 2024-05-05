import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'input_page.dart';

class InputPage extends StatefulWidget {
  @override
  InputPageState createState() => InputPageState();
}
class RepeatContainerCode extends StatelessWidget {

  RepeatContainerCode({required this.colors});
  final Color colors;
  @override
  Widget build (BuildContext  context){
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color : Color(0xFF1D1E33)
          borderRadius: BorderRadius.circular(10.0),

    )
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
           )
    )
    )
           Expanded(child: new RepeatContainerCode(( colors : Color(0xFFIE33),
    )

           )

      )


    ],
    ),),
        Expanded(child:Row(
         children: <Widget>[
          Expanded(child: new RepeatContainerCode( colors : Color(0xFFIE33),

    ),


    ],
    ),),
        Expanded(child: new RepeatContainerCode(( colors : Color(0xFFIE33),

    )
    ],
    ],
    )
    ],
  }
}