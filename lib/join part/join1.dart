import 'package:dietdog/pages/auth_page.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'join2.dart';

class Join1Page extends Page {
  static final pageName = 'Join1Page';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => Join1Widget());
  }
}

class Join1Widget extends StatefulWidget {
  const Join1Widget({Key? key}) : super(key: key);

  @override
  _Join1WidgetState createState() => _Join1WidgetState();
}

class _Join1WidgetState extends State<Join1Widget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _locationController = new TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  var _isChecked = false;

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
                      .goToOtherPage(AuthPage.pageName);
                },
              ),
            ),
            //text 추가
            Padding(padding: EdgeInsets.only(top: 40)),
            Align(
              alignment: Alignment(-0.6, 0),
              child: Text("견주님에 대해 알려주세요",
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
              alignment: Alignment(-0.6, 0),
              child: Text("세부사항들은 언제든지 업데이트할 수 있습니다",
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
                    width: 140,
                    height: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xff7b61ff))),

                //padding
                Padding(padding: EdgeInsets.only(left: 20)),

                Container(
                    width: 140,
                    height: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xffd2d9da)))
              ],
            ),

            Padding(padding: EdgeInsets.only(top: 80)),
            // 입력 _ 견주 이름, 위치정보
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
                      controller: _nameController,
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
                      controller: _locationController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '사는 곳을 입력해주세요';
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

                        hintText: '   사는 곳',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor:
                            const Color(0xffff), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                ])),

            //text 추가 _ 개인정보 활용 동의 _ row (text + check box ) -> _ 개인정보 활용 동의 누르면 페이지 띄어주는식
            Padding(padding: EdgeInsets.only(top: 20)),

            Container(
              margin: EdgeInsets.only(left: 27),
              child: Row(
                children: [
                  // 좌측 여백 패딩 넣고 사이 패딩 넣기
                  // 개인정보 활용 동의
                  Text("개인정보 활용 동의",
                      style: const TextStyle(
                          color: const Color(0xffa1a4b2),
                          fontWeight: FontWeight.w500,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 13),
                      textAlign: TextAlign.left),
                  Padding(padding: EdgeInsets.only(left: 165)),

                  Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      })
                ],
              ),
            ),

            // 이메일 등록 및 비밀번호 설정 -> 위 두개 입력 여부에 따라 변경
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
                        .goToOtherPage(Join2Page.pageName);
                  },
                  child: Text("이메일 등록 및 비밀번호 설정",
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
