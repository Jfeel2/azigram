import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class ProfilePage extends Page{
  static final pageName = 'ProfilePage'; 

  @override
  Route createRoute(BuildContext context) {   
   return MaterialPageRoute(settings: this, builder: (context) => ProfileWidget()); 
  }
}

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({ Key? key }) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
