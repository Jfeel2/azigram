import 'package:dietdog/pages/auth_page.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../join3.dart';
import 'dog1.dart';
import 'dog3.dart';

class Dog2Page extends Page {
  static final pageName = 'Dog2Page';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => Dog2Widget());
  }
}

class Dog2Widget extends StatefulWidget {
  const Dog2Widget({Key? key}) : super(key: key);

  @override
  _Dog2WidgetState createState() => _Dog2WidgetState();
}

class _Dog2WidgetState extends State<Dog2Widget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _breedController = new TextEditingController();
  TextEditingController _diseaseController = new TextEditingController();
  TextEditingController _uniqueController = new TextEditingController();
  bool status2 = true;

  @override
  void dispose() {
    _breedController.dispose();
    _diseaseController.dispose();
    _uniqueController.dispose();
    super.dispose();
  }

  var _listGenderText = ["남아", "여아"];
  var _listIconTabToggle = [Icons.male_outlined, Icons.female_outlined];
  var _tabTextIconIndexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: const Color(0xffffffff),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 40)),

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
            Padding(padding: EdgeInsets.only(top: 10)),
            Align(
              alignment: Alignment(-0.5, 0),
              child: Text("반려견에 대해 알려주세요!",
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 25.0),
                  textAlign: TextAlign.left //text algin 다시 확인
                  ),
            ),

            Padding(padding: EdgeInsets.only(top: 5)),
            Align(
              alignment: Alignment(-0.2, 0),
              child: Text("벌써 절반이나 왔어요. 강아지에 대해 조금만 더 입력해주세요",
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
                    margin: EdgeInsets.only(left: 27), //외부 여백은 margin 이용
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
                        color: const Color(0xffd2d9da))),

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

            Padding(padding: EdgeInsets.only(top: 50)),
            // 입력 _  견종, 성별, 중성화, 질병 , 특이사항 여부
            Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  Container(
                    width: 304,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      border: Border.all(color: const Color(0xffd8d8d8)),
                      //color: const Color(0xfff2f3f7)
                    ),
                    child: TextFormField(
                      style: const TextStyle(
                          color: const Color(0xff737a7b),
                          fontWeight: FontWeight.w300,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left,
                      cursorColor: const Color(0xff3f414e),
                      controller: _breedController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '견종을 입력해주세요';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),

                        hintText: '   견 종',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor:
                            const Color(0xffff), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  //성별
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 90)),
                      //성별 _ 남,여
                      FlutterToggleTab(
                          width: 50,
                          borderRadius: 15,
                          selectedBackgroundColors: [Color(0xff7b61ff)],
                          unSelectedBackgroundColors: [Colors.white],
                          selectedTextStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          unSelectedTextStyle: TextStyle(
                              color: const Color(0xff7b61ff),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          labels: _listGenderText,
                          icons: _listIconTabToggle,
                          selectedIndex: _tabTextIconIndexSelected,
                          selectedLabelIndex: (index) {
                            setState(() {
                              _tabTextIconIndexSelected = index;
                            });
                          })
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  //중성화 여부

                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 30)),
                      Text("중성화 수술 여부",
                          style: const TextStyle(
                              color: const Color(0xff434647),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSansCJKKR",
                              fontStyle: FontStyle.normal,
                              fontSize: 15.0),
                          textAlign: TextAlign.left),
                      Padding(padding: EdgeInsets.only(right: 140)),
                      //스위치_ default
                      FlutterSwitch(
                        width: 60.0,
                        height: 30.0,
                        toggleSize: 30.0,
                        value: status2,
                        borderRadius: 30.0,
                        padding: 1.0,
                        toggleColor: Colors.white,
                        switchBorder: Border.all(
                          color: const Color(0xff7b61ff),
                          width: 1.0,
                        ),
                        toggleBorder: Border.all(
                          color: const Color(0xff7b61ff),
                          width: 1.0,
                        ),
                        activeColor: const Color(0xff7b61ff),
                        inactiveColor: Colors.white,
                        onToggle: (val) {
                          setState(() {
                            status2 = val;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  //질병 여부
                  // Row(
                  //   children: [
                  //     Text("질병 여부",
                  //         style: const TextStyle(
                  //             color: const Color(0xff434647),
                  //             fontWeight: FontWeight.w400,
                  //             fontFamily: "NotoSansCJKKR",
                  //             fontStyle: FontStyle.normal,
                  //             fontSize: 4.0),
                  //         textAlign: TextAlign.left),
                  //     Padding(padding: EdgeInsets.only(right: 50)),
                  //     //스위치_ default
                  //     FlutterSwitch(
                  //       width: 100.0,
                  //       height: 55.0,
                  //       toggleSize: 45.0,
                  //       value: status3,
                  //       borderRadius: 30.0,
                  //       padding: 2.0,
                  //       toggleColor: Color.fromRGBO(225, 225, 225, 1),
                  //       switchBorder: Border.all(
                  //         color: Color.fromRGBO(2, 107, 206, 1),
                  //         width: 6.0,
                  //       ),
                  //       toggleBorder: Border.all(
                  //         color: Color.fromRGBO(2, 107, 206, 1),
                  //         width: 5.0,
                  //       ),
                  //       activeColor: const Color(0xff7b61ff),
                  //       inactiveColor: Colors.white,
                  //       onToggle: (val2) {
                  //         setState(() {
                  //           status3 = val2;
                  //         });
                  //       },
                  //     ),
                  //   ],
                  // ),
                  Padding(padding: EdgeInsets.only(top: 10)),

                  Container(
                    width: 304,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      border: Border.all(color: const Color(0xffd8d8d8)),
                      //color: const Color(0xfff2f3f7)
                    ),
                    child: TextFormField(
                      style: const TextStyle(
                          color: const Color(0xff737a7b),
                          fontWeight: FontWeight.w300,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left,
                      cursorColor: const Color(0xff3f414e),
                      controller: _diseaseController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '질병 종류을 입력해주세요';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),

                        hintText: '   질 병 종 류',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor:
                            const Color(0xffff), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 25)),

                  Container(
                    width: 304,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      border: Border.all(color: const Color(0xffd8d8d8)),
                      //color: const Color(0xfff2f3f7)
                    ),
                    child: TextFormField(
                      style: const TextStyle(
                          color: const Color(0xff737a7b),
                          fontWeight: FontWeight.w300,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left,
                      cursorColor: const Color(0xff3f414e),
                      controller: _uniqueController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '특성을 입력해주세요';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),

                        hintText: '   특 이 사 항 예시): 말티즈인데 큰 편이에요',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor:
                            const Color(0xffff), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                ])),
            Padding(padding: EdgeInsets.only(top: 40)),
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
                        .goToOtherPage(Dog3Page.pageName);
                  },
                  child: Text(
                      "                   산책성향 입력하기                    >",
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
                width: 258,
                height: 50,
                child: TextButton(
                  //기존 flat button 대비 사용 진행
                  onPressed: () {
                    Provider.of<PageNotifier>(context, listen: false)
                        .goToOtherPage(Dog1Page.pageName);
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
