import 'package:dietdog/pages/auth_page.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duration_picker/duration_picker.dart';

import '../join3.dart';
import 'dog2.dart';
import 'dog4.dart';

class Dog3Page extends Page {
  static final pageName = 'Dog3Page';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => Dog3Widget());
  }
}

class Dog3Widget extends StatefulWidget {
  const Dog3Widget({Key? key}) : super(key: key);

  @override
  _Dog3WidgetState createState() => _Dog3WidgetState();
}

class _Dog3WidgetState extends State<Dog3Widget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _dayIsOnMon = false;
  bool _dayIsOnTue = false;
  bool _dayIsOnWen = false;
  bool _dayIsOnThr = false;
  bool _dayIsOnFri = false;
  bool _dayIsOnSat = false;
  bool _dayIsOnSun = false;
  Duration _duration = const Duration(hours: 0, minutes: 0);
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20)),

            Align(
              alignment: Alignment.topRight,
              child: CloseButton(
                color: const Color(0xff6a7076),
                onPressed: () {
                  Provider.of<PageNotifier>(context, listen: false)
                      .goToOtherPage(Join3Page.pageName);
                },
              ),
            ),
            //text 추가
            Padding(padding: EdgeInsets.only(top: 30)),
            Align(
              alignment: Alignment(-0.3, 0),
              child: Text("강아지 산책을 얼마나 하나요?",
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 25.0),
                  textAlign: TextAlign.left //text algin 다시 확인
                  ),
            ),

            Padding(padding: EdgeInsets.only(top: 8)),
            Align(
              alignment: Alignment(-0.45, 0),
              child: Text(
                  "강아지들에게는 산책이 활동량의 기준이 되죠!\n뿌링이는 얼마나 건강하게 생활하고 있는지 체크해주세요.",
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 12),
                  textAlign: TextAlign.left),
            ),

            //진행 현황 container 추가
            Padding(padding: EdgeInsets.only(top: 20)),

            Row(
              children: <Widget>[
                // 좌측 여백 패딩 넣고 사이 패딩 넣기

                Container(
                    margin: EdgeInsets.only(left: 24), //외부 여백은 margin 이용
                    width: 65,
                    height: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xff7b61ff))),

                //padding
                Padding(padding: EdgeInsets.only(left: 15)),
                Container(
                    //margin: EdgeInsets.only(left: 27), //외부 여백은 margin 이용
                    width: 65,
                    height: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xff7b61ff))),

                //padding
                Padding(padding: EdgeInsets.only(left: 15)),
                Container(
                    //margin: EdgeInsets.only(left: 27), //외부 여백은 margin 이용
                    width: 65,
                    height: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xff7b61ff))),

                //padding
                Padding(padding: EdgeInsets.only(left: 15)),
                Container(
                    width: 65,
                    height: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xffd2d9da)))
              ],
            ),

            Padding(padding: EdgeInsets.only(top: 30)),
            // 입력 _ 강아지 이름, 생년월일, 입양일자
            Align(
              alignment: Alignment.center,
              child: Text("뿌링이와 산책가는 요일을 체크해주세요.",
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 12),
                  textAlign: TextAlign.left),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),

            Row(children: <Widget>[
              //산책 요일 선택 부분
              Padding(padding: EdgeInsets.only(left: 20)),

              Container(
                alignment: Alignment(0, 0),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: _dayIsOnSun
                        ? const Color(0xff7b61ff)
                        : const Color(0xffa1a4b2),
                    borderRadius: BorderRadius.all(Radius.circular(24.5)),
                    border: Border.all(
                        color: _dayIsOnSun
                            ? const Color(0xff7b61ff)
                            : const Color(0xffa1a4b2),
                        width: 0.8390195965766907)),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _dayIsOnSun = !_dayIsOnSun;
                      });
                    },
                    child: Text("일",
                        style: const TextStyle(
                            color: const Color(0xfffefffe),
                            fontWeight: FontWeight.w400,
                            fontFamily: "ABeeZee",
                            fontStyle: FontStyle.normal,
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),

              Padding(padding: EdgeInsets.only(left: 10)),

              Container(
                alignment: Alignment(0, 0),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: _dayIsOnMon
                        ? const Color(0xff7b61ff)
                        : const Color(0xffa1a4b2),
                    borderRadius: BorderRadius.all(Radius.circular(24.5)),
                    border: Border.all(
                        color: _dayIsOnMon
                            ? const Color(0xff7b61ff)
                            : const Color(0xffa1a4b2),
                        width: 0.8390195965766907)),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _dayIsOnMon = !_dayIsOnMon;
                      });
                    },
                    child: Text("월",
                        style: const TextStyle(
                            color: const Color(0xfffefffe),
                            fontWeight: FontWeight.w400,
                            fontFamily: "ABeeZee",
                            fontStyle: FontStyle.normal,
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),

              Padding(padding: EdgeInsets.only(left: 10)),

              Container(
                alignment: Alignment(0, 0),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: _dayIsOnTue
                        ? const Color(0xff7b61ff)
                        : const Color(0xffa1a4b2),
                    borderRadius: BorderRadius.all(Radius.circular(24.5)),
                    border: Border.all(
                        color: _dayIsOnTue
                            ? const Color(0xff7b61ff)
                            : const Color(0xffa1a4b2),
                        width: 0.8390195965766907)),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _dayIsOnTue = !_dayIsOnTue;
                      });
                    },
                    child: Text("화",
                        style: const TextStyle(
                            color: const Color(0xfffefffe),
                            fontWeight: FontWeight.w400,
                            fontFamily: "ABeeZee",
                            fontStyle: FontStyle.normal,
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),
              Padding(padding: EdgeInsets.only(left: 10)),

              Container(
                alignment: Alignment(0, 0),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: _dayIsOnWen
                        ? const Color(0xff7b61ff)
                        : const Color(0xffa1a4b2),
                    borderRadius: BorderRadius.all(Radius.circular(24.5)),
                    border: Border.all(
                        color: _dayIsOnWen
                            ? const Color(0xff7b61ff)
                            : const Color(0xffa1a4b2),
                        width: 0.8390195965766907)),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _dayIsOnWen = !_dayIsOnWen;
                      });
                    },
                    child: Text("수",
                        style: const TextStyle(
                            color: const Color(0xfffefffe),
                            fontWeight: FontWeight.w400,
                            fontFamily: "ABeeZee",
                            fontStyle: FontStyle.normal,
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),
              Padding(padding: EdgeInsets.only(left: 10)),

              Container(
                alignment: Alignment(0, 0),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: _dayIsOnThr
                        ? const Color(0xff7b61ff)
                        : const Color(0xffa1a4b2),
                    borderRadius: BorderRadius.all(Radius.circular(24.5)),
                    border: Border.all(
                        color: _dayIsOnThr
                            ? const Color(0xff7b61ff)
                            : const Color(0xffa1a4b2),
                        width: 0.8390195965766907)),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _dayIsOnThr = !_dayIsOnThr;
                      });
                    },
                    child: Text("목",
                        style: const TextStyle(
                            color: const Color(0xfffefffe),
                            fontWeight: FontWeight.w400,
                            fontFamily: "ABeeZee",
                            fontStyle: FontStyle.normal,
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),
              Padding(padding: EdgeInsets.only(left: 10)),

              Container(
                alignment: Alignment(0, 0),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: _dayIsOnFri
                        ? const Color(0xff7b61ff)
                        : const Color(0xffa1a4b2),
                    borderRadius: BorderRadius.all(Radius.circular(24.5)),
                    border: Border.all(
                        color: _dayIsOnFri
                            ? const Color(0xff7b61ff)
                            : const Color(0xffa1a4b2),
                        width: 0.8390195965766907)),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _dayIsOnFri = !_dayIsOnFri;
                      });
                    },
                    child: Text("금",
                        style: const TextStyle(
                            color: const Color(0xfffefffe),
                            fontWeight: FontWeight.w400,
                            fontFamily: "ABeeZee",
                            fontStyle: FontStyle.normal,
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),
              Padding(padding: EdgeInsets.only(left: 10)),

              Container(
                alignment: Alignment(0, 0),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: _dayIsOnSat
                        ? const Color(0xff7b61ff)
                        : const Color(0xffa1a4b2),
                    borderRadius: BorderRadius.all(Radius.circular(24.5)),
                    border: Border.all(
                        color: _dayIsOnSat
                            ? const Color(0xff7b61ff)
                            : const Color(0xffa1a4b2),
                        width: 0.8390195965766907)),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _dayIsOnSat = !_dayIsOnSat;
                      });
                    },
                    child: Text("토",
                        style: const TextStyle(
                            color: const Color(0xfffefffe),
                            fontWeight: FontWeight.w400,
                            fontFamily: "ABeeZee",
                            fontStyle: FontStyle.normal,
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),
            ]),

            Padding(padding: EdgeInsets.only(top: 25)),
            Align(
              alignment: Alignment.center,
              child: Text(
                  "한번 산책시 얼마 동안 하는지 알려주세요.", //기준 30분으로 세팅 후 수정할 수 있게 하기 _ 몸무게 설정하는 것처럼
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 12),
                  textAlign: TextAlign.left),
            ),

            Padding(padding: EdgeInsets.only(top: 2)),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DurationPicker(
                  duration: _duration,
                  baseUnit: BaseUnit.minute,
                  onChange: (val) {
                    setState(() => _duration = val);
                  },
                  snapToMins: 5.0,
                )
              ],
            ),

            // Builder(
            //     builder: (BuildContext context) => FloatingActionButton(
            //           onPressed: () async {
            //             var resultingDuration = await showDurationPicker(
            //               context: context,
            //               initialTime: const Duration(seconds: 30),
            //               baseUnit: BaseUnit.second,
            //             );
            //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //                 content:
            //                     Text('Chose duration: $resultingDuration')));
            //           },
            //           tooltip: 'Popup Duration Picker',
            //           child: const Icon(Icons.add),
            //         )),

            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
                width: 304,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(23.5)),
                    border:
                        Border.all(color: const Color(0xff7b61ff), width: 1)),
                child: TextButton(
                  onPressed: () {
                    Provider.of<PageNotifier>(context, listen: false)
                        .goToOtherPage(Dog4Page.pageName);
                  },
                  child: Text(
                      "                   식습관 입력하기                    >",
                      style: const TextStyle(
                          color: const Color(0xff7b61ff),
                          fontWeight: FontWeight.w600,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                      textAlign: TextAlign.center),
                )),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
                width: 304,
                height: 50,
                child: TextButton(
                  //기존 flat button 대비 사용 진행
                  onPressed: () {
                    Provider.of<PageNotifier>(context, listen: false)
                        .goToOtherPage(Dog2Page.pageName);
                  },

                  child: Text("이전으로",
                      style: const TextStyle(
                          color: const Color(0xff737a7b),
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
    );
  }
}
