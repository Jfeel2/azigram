import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class CommunityPage extends Page{
  static final pageName = 'CommunityPage'; 

  @override
  Route createRoute(BuildContext context) {   
   return MaterialPageRoute(settings: this, builder: (context) => CommunityWidget()); 
  }
}

class CommunityWidget extends StatefulWidget {
  const CommunityWidget({ Key? key }) : super(key: key);

  @override
  _CommunityWidgetState createState() => _CommunityWidgetState();
}

class _CommunityWidgetState extends State<CommunityWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        
        
      ),
    );
  }
}