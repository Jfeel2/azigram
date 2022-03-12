import 'package:dietdog/pages/auth_page.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'join1.dart';
import 'join3.dart';

class Join2Page extends Page {
  static final pageName = 'Join2Page';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => Join2Widget());
  }
}

class Join2Widget extends StatefulWidget {
  const Join2Widget({Key? key}) : super(key: key);

  @override
  _Join2WidgetState createState() => _Join2WidgetState();
}

class _Join2WidgetState extends State<Join2Widget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _emailCheckController = new TextEditingController();
  TextEditingController _passwordCheckController = new TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailCheckController.dispose();
    _passwordCheckController.dispose();
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
                      .goToOtherPage(AuthPage.pageName);
                },
              ),
            ),
            //text 추가
            Padding(padding: EdgeInsets.only(top: 40)),
            Align(
              alignment: Alignment(-0.2, 0),
              child: Text("이메일과 비밀번호를 설정할게요",
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
              alignment: Alignment(-0.7, 0),
              child: Text("로그인을 위한 세부사항을 입력해주세요.",
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
                        color: const Color(0xff7b61ff)))
              ],
            ),

            Padding(padding: EdgeInsets.only(top: 60)),
            // 입력 _ 이메일,확인, 비번,확인
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
                      controller: _emailController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '이메일을 입력해주세요';
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

                        hintText: '   이 메 일 입 력',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor:
                            const Color(0xffff), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
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
                      controller: _emailCheckController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '이메일 확인을 입력해주세요';
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
                        hintText: '   이 메 일 확 인 ',
                        fillColor: const Color(0xffff),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
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
                      controller: _passwordController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '비밀번호를 입력해주세요';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),
                        hintText: '   비 밀 번 호 입 력',
                        fillColor: const Color(0xffff),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    width: 304,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      border: Border.all(color: const Color(0xffd8d8d8)),
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
                      controller: _passwordCheckController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '비밀번호를 확인해주세요';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: const Color(0xffd8d8d8)),
                        ),
                        hintText: '   비 밀 번 호 확 인',
                        fillColor: const Color(0xffff),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ])),

            // 이메일 등록 및 비밀번호 설정 -> 위 두개 입력 여부에 따라 변경
            Padding(padding: EdgeInsets.only(top: 80)),
            Container(
                width: 258,
                height: 50,
                child: TextButton(
                  //기존 flat button 대비 사용 진행
                  onPressed: () async {
                    Provider.of<PageNotifier>(context, listen: false)
                        .goToOtherPage(Join3Page.pageName);
                  },

                  child: Text("회원가입 완료하기",
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
                        .goToOtherPage(Join1Page.pageName);
                  }, // 로그인 버튼 누르면 _ login1 페이지로 이동

                  child: Text("이전으로",
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
    );
  }
}
