// import 'package:dietdog/pages/auth_page.dart';
// import 'package:dietdog/provider/page_notifier.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart'; //추가시 클래스 옮겨온 에러 해결 

// class MyHomePage extends StatefulWidget {

//   static final String pageName = 'MyHomePage';

//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {

//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
        
//         title: Text(widget.title),
//         actions: [
//           IconButton( icon: Icon(Icons.logout), onPressed:(){
//             Provider.of<PageNotifier>(context, listen : false ).goToOtherPage(AuthPage.pageName);
//           })
//         ],

//       ),
//       body: Center(
        
//         child: Column(
          
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
