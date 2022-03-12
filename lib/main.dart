import 'package:dietdog/community_part/community.dart';
import 'package:dietdog/join%20part/dog/dog4.dart';
import 'package:dietdog/join%20part/join1.dart';
import 'package:dietdog/login%20part/login1.dart';
import 'package:dietdog/main%20page/bottomnavi.dart';
import 'package:dietdog/main%20page/weightcare.dart';
import 'package:dietdog/pages/auth_page.dart';
import 'package:dietdog/profile_part/profile.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:dietdog/join part/join1.dart';
import 'package:provider/provider.dart';

import 'package:dietdog/main page/todo.dart';

import 'join part/dog/dog1.dart';
import 'join part/dog/dog2.dart';
import 'join part/dog/dog3.dart';
import 'join part/join2.dart';
import 'join part/join3.dart';

void main() {
  //navigator2.0 사용
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String _text = '변경되기전';
  //final String _url = 'http://192.168.150.51:8080';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PageNotifier())],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(),
          home: Consumer<PageNotifier>(
            // -> page_notifier
            builder: (context, pageNotifier, child) {
              return Navigator(
                  pages: [
                    AuthPage(), //여러개 페이지 넣을 수 있음 _ 가장 윗부분에 있을 수록 뒷부분 페이지로 배치 _ 맨 아래있는 부분만 일단 보여짐

                    if (pageNotifier.currentPage == AuthPage.pageName)
                      AuthPage(), //각각 페이지 마다의 key 체크
                    if (pageNotifier.currentPage == LoginPage.pageName)
                      LoginPage(), //**다른페이지 연결하고 싶다. 이런식으로 추가 진행
                    if (pageNotifier.currentPage == Join1Page.pageName)
                      Join1Page(),
                    if (pageNotifier.currentPage == Join2Page.pageName)
                      Join2Page(),
                    if (pageNotifier.currentPage == Join3Page.pageName)
                      Join3Page(),
                    if (pageNotifier.currentPage == Dog1Page.pageName)
                      Dog1Page(),
                    if (pageNotifier.currentPage == Dog2Page.pageName)
                      Dog2Page(),
                    if (pageNotifier.currentPage == Dog3Page.pageName)
                      Dog3Page(),
                    if (pageNotifier.currentPage == Dog4Page.pageName)
                      Dog4Page(),
                    if (pageNotifier.currentPage == TodoPage.pageName)
                      TodoPage(),
                    if (pageNotifier.currentPage == MainPage.pageName)
                      MainPage(),
                    if (pageNotifier.currentPage == CommunityPage.pageName)
                      CommunityPage(),
                    if (pageNotifier.currentPage == ProfilePage.pageName)
                      ProfilePage(),
                    if (pageNotifier.currentPage == WeightcarePage.pageName)
                      WeightcarePage(),
                    //**다른페이지 연결하고 싶다. 이런식으로 추가 진행
                  ],
                  onPopPage: (route, result) {
                    //Navigator 속성중 확인 _ back button 활용
                    if (!route.didPop(result)) {
                      return false;
                    }
                    return true;
                  });
            },
          )),
    );
  }
}

/*기존 class 파일 따로 옮김 
 코딩파파 로그인 영상 참조 _ Navigator 2.0 사용 _ app size 커지고 기능 많아 질시 더 좋음. 
  Page 추가 Pop, push 하기 

*/

/*
    백그라운드 색상 
     6461FF

*/
