//import 'dart:html';
import 'package:dietdog/join%20part/join1.dart';
import 'package:dietdog/login%20part/login1.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "package:http/http.dart" as http;
import 'dart:convert';
import 'dart:async';

class AuthPage extends Page {
  static final pageName = 'AuthPage'; //keyword = pageName 이용 화면에 보여주기

  @override
  Route createRoute(BuildContext context) {
    //다른 페이지로 가는 route 입력
    return MaterialPageRoute(
        settings: this, builder: (context) => AuthWidget());
  }
}

class AuthWidget extends StatefulWidget {
  //const AuthWidget({ Key? key }) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  //GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String result = "";
  //final String _url = "http://192.168.150.51:3000";
  //final url _url = "http://192.168.150:3000";
  //var url = Uri.parse('http://192.168.0.4:3000');

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            decoration:
                BoxDecoration(color: const Color(0xff7b61ff)), // 0xff6461FF
            padding:
                EdgeInsets.only(top: 80), //위에서 70 기준 진행 _ 아이폰8 small 사이즈 기준

            child: Column(
                //mainAxisSize: MainAxisSize.max,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 40)),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "S-CoreDream-5",
                            fontStyle: FontStyle.normal,
                            fontSize: 30),
                        text: "강아지 비만"), //글자간 줄 띄우기 확인하기

                    TextSpan(
                        style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gmarket Sans", //"S-CoreDream-6",
                          fontStyle: FontStyle.normal,
                          fontSize: 30,
                        ),
                        text: "\n쉽게 관리 하개")
                  ])),

                  ///* 서비스 로고 넣기
                  Padding(padding: EdgeInsets.only(top: 40)),

                  Image.asset("assets/images/logo2.png",
                      width: 250, height: 250),

                  // Rectangle 25 _ 98.2dp / 203 전체 기준 / 배치 가운데 정렬
                  Padding(padding: EdgeInsets.only(top: 60)),

                  Container(
                      width: 258,
                      height: 50,
                      child: TextButton(
                        //기존 flat button 대비 사용 진행
                        onPressed: () async {
                          Provider.of<PageNotifier>(context, listen: false)
                              .goToOtherPage(Join1Page.pageName);
                          //var url = Uri.parse('http://10.0.2.2:8080');
                          //http.Response _res = await http.get(url); //* 추가안
                          //var response = await http.get(url);

                          //print(response.body);

                          // setState(() {
                          //   result = response.body;
                          // });
                        }, // 회원가입 _ join1 페이지로 이동

                        child: Text("회원가입",
                            style: const TextStyle(
                                color: const Color(0xff7b61ff),
                                fontWeight: FontWeight.w700,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle: FontStyle.normal,
                                fontSize: 20.0),
                            textAlign: TextAlign.center),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24.5)),
                        color: const Color(0xffffffff),
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
                              .goToOtherPage(LoginPage.pageName);
                        }, // 로그인 버튼 누르면 _ login1 페이지로 이동

                        child: Text("로그인",
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w700,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle: FontStyle.normal,
                                fontSize: 20.0),
                            textAlign: TextAlign.center),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24.5)),
                          color: const Color(0xff7b61ff))),
                ])));
  }
}
