import 'package:dietdog/main%20page/bottomnavi.dart';
import 'package:dietdog/main%20page/todo.dart';
import 'package:dietdog/pages/auth_page.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends Page {
  static final pageName = 'LoginPage';

  @override
  Route createRoute(BuildContext context) {
    //다른 페이지로 가는 route 입력
    return MaterialPageRoute(
        settings: this, builder: (context) => LoginWidget());
  }
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _nicknameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _pwController = new TextEditingController();

  @override
  void dispose() {
    //**despose 변수 생성의 목적 무엇?
    _nicknameController.dispose();
    _emailController.dispose();
    _pwController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(color: const Color(0xffffffff)),
        //기본 색상 white 이므로 상관 없을듯
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

            //** *로고 _ 이미지 넣기
            Padding(padding: EdgeInsets.only(top: 70)),
            Image.asset("assets/images/logo3.png",
                width: 180, height: 180), //예시 넣어 놓은것

            //** 입력바 동일하게 들어감_ 기본 텍스트 배치 되어있음 내부 + 입력값 받을시 옆에 체크 포인트 추가  */
            Padding(padding: EdgeInsets.only(top: 10)),
            // 입력 _ 닉네임 유저네임 ,이메일, 비번
            // 우측의 체크 V 표시, 비밀번호_ 가리기 표시 ->obscureText ,키보드표시 -> keyboardtype
            Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  Container(
                    width: 290,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(12.473260879516602)),
                        color: const Color(0xfff2f3f7)),
                    child: TextFormField(
                      style: const TextStyle(
                          color: const Color(0xff3f414e),
                          fontWeight: FontWeight.w300,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left,
                      cursorColor: const Color(0xff3f414e),
                      controller: _nicknameController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '닉네임을 입력하세요';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(12.473260879516602)),
                        ),
                        hintText: 'ex)닉네임 입력',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor: const Color(
                            0xfff2f3f7), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Container(
                    width: 290,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(12.473260879516602)),
                        color: const Color(0xfff2f3f7)),
                    child: TextFormField(
                      style: const TextStyle(
                          color: const Color(0xff3f414e),
                          fontWeight: FontWeight.w300,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left,
                      cursorColor: const Color(0xff3f414e),
                      controller: _emailController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '이메일을 입력하세요';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(12.473260879516602)),
                        ),
                        hintText: 'ex)이메일주소 입력',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor: const Color(
                            0xfff2f3f7), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Container(
                    width: 290,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(12.473260879516602)),
                        color: const Color(0xfff2f3f7)),
                    child: TextFormField(
                      style: const TextStyle(
                          color: const Color(0xff3f414e),
                          fontWeight: FontWeight.w300,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left,
                      cursorColor: const Color(0xff3f414e),
                      controller: _pwController,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return '비밀번호을 입력하세요';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(12.473260879516602)),
                        ),
                        hintText: '비밀번호 입력',
                        //focusColor: const Color(0xfff2f3f7), //
                        fillColor: const Color(
                            0xfff2f3f7), //기존 위 코드 변경 _ color 맞는지 확인하기
                      ),
                      keyboardType:
                          TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                    ),
                  ),
                ])),

            // 로그인 버튼
            Padding(padding: EdgeInsets.only(top: 60)),

            Container(
                width: 300,
                height: 50,
                child: TextButton(
                  //기존 flat button 대비 사용 진행
                  onPressed: () {
                    Provider.of<PageNotifier>(context, listen: false)
                        .goToOtherPage(MainPage.pageName);
                  }, // 로그인 버튼 누르면 _ '견주 등록or기존 반려견 연결 기능 _ register0_page.dart' 로 이동

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
          ],
        ),
      ),
    );
  }
}
