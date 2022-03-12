//3페이지_ 웰컴 환영합니다. 페이지구성하기
import 'package:dietdog/main%20page/todo.dart';
import 'package:dietdog/pages/auth_page.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dog/dog1.dart';
import 'join1.dart';

class Join3Page extends Page {
  static final pageName = 'Join3Page';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => Join3Widget());
  }
}

class Join3Widget extends StatefulWidget {
  const Join3Widget({Key? key}) : super(key: key);

  @override
  _Join3WidgetState createState() => _Join3WidgetState();
}

class _Join3WidgetState extends State<Join3Widget> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
      Container(
        color: const Color(0xff7b61ff),
        height: 450,
      ),
      Container(
        decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: <Widget>[
            //text 추가
            Padding(padding: EdgeInsets.only(top: 40)),
            Align(
              alignment: Alignment(0, 0),
              child: Text("김다정님, 반갑습니다",
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 25.0),
                  textAlign: TextAlign.left //text algin 다시 확인
                  ),
            ),

            Padding(padding: EdgeInsets.only(top: 10)),
            Align(
              alignment: Alignment(0, 0),
              child: Text(" 어플을 시작하기 위해서는 먼저 반려견의 \n정보를 등록하고 프로필을 생성해야 합니다.",
                  style: const TextStyle(
                      color: const Color(0xff707778),
                      fontWeight: FontWeight.w400,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 12),
                  textAlign: TextAlign.left),
            ),

            Padding(padding: EdgeInsets.only(top: 50)),
            Container(
                width: 258,
                height: 50,
                child: TextButton(
                  //기존 flat button 대비 사용 진행
                  onPressed: () async {
                    Provider.of<PageNotifier>(context, listen: false)
                        .goToOtherPage(Dog1Page.pageName);
                  },

                  child: Text("강아지 프로필 생성하기",
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                      textAlign: TextAlign.center),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24.5)),
                  color: const Color(0xff7b61ff),
                )),

            /// 간격 3.8dp, 가운대 정렬
            Padding(padding: EdgeInsets.only(top: 12.8)),

            Container(
                width: 258,
                height: 50,
                child: TextButton(
                  //기존 flat button 대비 사용 진행
                  onPressed: () {
                    Provider.of<PageNotifier>(context, listen: false)
                        .goToOtherPage(TodoPage.pageName);
                  },

                  child: Text("기존 반려견 연결하기",
                      style: const TextStyle(
                          color: const Color(0xff7b61ff),
                          fontWeight: FontWeight.w500,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                      textAlign: TextAlign.center),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(24.5)),
                    color: const Color(0xffffffff))),
          ],
        ),
      ),
    ]));
  }
}
