import 'package:dietdog/pages/auth_page.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../join3.dart';
import 'dog2.dart';

class Dog1Page extends Page {
  static final pageName = 'Dog1Page';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => Dog1Widget());
  }
}

class Dog1Widget extends StatefulWidget {
  const Dog1Widget({Key? key}) : super(key: key);

  @override
  _Dog1WidgetState createState() => _Dog1WidgetState();
}

class _Dog1WidgetState extends State<Dog1Widget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _dognameController = new TextEditingController();
  TextEditingController _birthdayController = new TextEditingController();
  TextEditingController _adoptdayController = new TextEditingController();

  @override
  void dispose() {
    _dognameController.dispose();
    _birthdayController.dispose();
    _adoptdayController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
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
            Padding(padding: EdgeInsets.only(top: 30)),
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
              alignment: Alignment(-0.68, 0),
              child: Text("시작이 반이죠, 함께 천천히 알아가봐요",
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
                        color: const Color(0xffd2d9da))),

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

            Padding(padding: EdgeInsets.only(top: 80)),
            // 입력 _ 강아지 이름, 생년월일, 입양일자
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
                      controller: _dognameController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '이름을 입력해주세요';
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

                        hintText: '   이 름',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor:
                            const Color(0xffff), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40)),
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
                      controller: _birthdayController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '생년월일을 입력해주세요';
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

                        hintText: '   생 년 월 일',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor:
                            const Color(0xffff), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.datetime, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40)),
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
                      controller: _adoptdayController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '입양일자를 입력해주세요';
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

                        hintText: '   입 양 일 자',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor:
                            const Color(0xffff), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.datetime, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                ])),

            //text 추가 _ 개인정보 활용 동의 _ row (text + check box ) -> _ 개인정보 활용 동의 누르면 페이지 띄어주는식
            Padding(padding: EdgeInsets.only(top: 20)),

            // Container(
            //   margin: EdgeInsets.only(left: 27),
            //   child: Row(
            //     children: [
            //       // 좌측 여백 패딩 넣고 사이 패딩 넣기
            //       // 개인정보 활용 동의
            //       Text("개인정보 활용 동의",
            //           style: const TextStyle(
            //               color: const Color(0xffa1a4b2),
            //               fontWeight: FontWeight.w500,
            //               fontFamily: "NotoSansCJKKR",
            //               fontStyle: FontStyle.normal,
            //               fontSize: 13),
            //           textAlign: TextAlign.left),
            //       Padding(padding: EdgeInsets.only(left: 165)),

            //       Checkbox(
            //           value: _isChecked,
            //           onChanged: (value) {
            //             setState(() {
            //               _isChecked = value!;
            //             });
            //           })
            //     ],
            //   ),
            // ),

            Padding(padding: EdgeInsets.only(top: 80)),

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
                        .goToOtherPage(Dog2Page.pageName);
                  },
                  child: Text("                   견종 입력하기                    >",
                      style: const TextStyle(
                          color: const Color(0xff7b61ff),
                          fontWeight: FontWeight.w600,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                      textAlign: TextAlign.center),
                ))
          ],
        ),
      ),
    );
  }
}
