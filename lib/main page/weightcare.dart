//* 체중추이 확인 페이지 
import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class WeightcarePage extends Page{
  static final pageName = 'WeightcarePage'; 

  @override
  Route createRoute(BuildContext context) {   
   return MaterialPageRoute(settings: this, builder: (context) => WeightcareWidget()); 
  }
}

class WeightcareWidget extends StatefulWidget {
  const WeightcareWidget({ Key? key }) : super(key: key);

  @override
  _WeightcareWidgetState createState() => _WeightcareWidgetState();
}

class _WeightcareWidgetState extends State<WeightcareWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
