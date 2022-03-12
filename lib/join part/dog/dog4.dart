import 'package:dietdog/pages/auth_page.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../join3.dart';
import 'dog2.dart';
import 'dog3.dart';

class Dog4Page extends Page {
  static final pageName = 'Dog4Page';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this, builder: (context) => Dog4Widget());
  }
}

class Dog4Widget extends StatefulWidget {
  const Dog4Widget({Key? key}) : super(key: key);

  @override
  _Dog4WidgetState createState() => _Dog4WidgetState();
}

class _Dog4WidgetState extends State<Dog4Widget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _foodController = new TextEditingController();
  int id = 1;
  int foodtime = 1; //사료 횟수 초깃값 = 1회

  @override
  void dispose() {
    _foodController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
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
                child: Text("강아지의 식습관은 어떤가요?",
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
                alignment: Alignment(-0.35, 0),
                child: Text("매일 먹는 사료와 간식, 하루동안 얼마나 먹는지 알려주세요.",
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

              Align(
                  alignment: Alignment(-0.5, 0),
                  child: Text("1. 뿌링이가 먹는 사료 종류를 입력해주세요",
                      style: const TextStyle(
                          color: const Color(0xff7b61ff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-160",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left)),
              Padding(padding: EdgeInsets.only(top: 20)),
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
                        controller: _foodController,
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return '사료를 입력해주세요';
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

                          hintText: '   제품명을 입력해주세요',
                          //focusColor: const Color(0xfff2f3f7), //
                          fillColor:
                              const Color(0xffff), //기존 위 코드 변경 _ color 맞는지 확인하기
                        ),
                        keyboardType:
                            TextInputType.text, //닉네임이므로 text, 입력시  키보드 띄어주는방식
                      ),
                    ),
                  ])),
              Padding(padding: EdgeInsets.only(top: 25)),
              Align(
                  alignment: Alignment(-0.5, 0),
                  child: Text("2. 사료를 급여한 횟수를 알려주세요.(1일기준)",
                      style: const TextStyle(
                          color: const Color(0xff7b61ff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-160",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left)),
              Padding(padding: EdgeInsets.only(top: 10)),

//*라디오 버튼 _사료 횟수
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            foodtime = 1;
                          });
                        }),
                    Text(
                      "1회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 2;
                          });
                        }),
                    Text(
                      "2회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 3;
                          });
                        }),
                    Text(
                      "3회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 4,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 4;
                          });
                        }),
                    Text(
                      "4회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 5,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 5;
                          });
                        }),
                    Text(
                      "5회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 6,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 6;
                          });
                        }),
                    Text(
                      "6회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
              ]),

              Padding(padding: EdgeInsets.only(top: 20)),
              Align(
                  alignment: Alignment(-0.5, 0),
                  child: Text("3. 사료를 한번 줄때, 얼마나 주는 지 선택해주세요.",
                      style: const TextStyle(
                          color: const Color(0xff7b61ff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-160",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left)),
              Padding(padding: EdgeInsets.only(top: 10)),

              Align(
                  alignment: Alignment(-0.5, 0),
                  child: Text("4. 하루 기준 간식 급여 횟수를 선택해주세요.",
                      style: const TextStyle(
                          color: const Color(0xff7b61ff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-160",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left)),
              Padding(padding: EdgeInsets.only(top: 10)),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            foodtime = 1;
                          });
                        }),
                    Text(
                      "1회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 2;
                          });
                        }),
                    Text(
                      "2회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 3;
                          });
                        }),
                    Text(
                      "3회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 4,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 4;
                          });
                        }),
                    Text(
                      "4회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 5,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 5;
                          });
                        }),
                    Text(
                      "5회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: 6,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 6;
                          });
                        }),
                    Text(
                      "6회",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
              ]),

              Padding(padding: EdgeInsets.only(top: 20)),

              Align(
                  alignment: Alignment(-0.5, 0),
                  child: Text("5. 간식은 주로 어떤 제품을 먹이는지 선택해주세요.",
                      style: const TextStyle(
                          color: const Color(0xff7b61ff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-160",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left)),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            foodtime = 1;
                          });
                        }),
                    Text(
                      "다이어트 간식",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {
                            id = 2;
                          });
                        }),
                    Text(
                      "시제품 간식",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: id,
                        activeColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff7b61ff)),
                        onChanged: (val) {
                          setState(() {});
                        }),
                    Text(
                      "유기농/건강식",
                      style: const TextStyle(
                          color: const Color(0xff969696),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-140",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    )
                  ],
                ),
              ]),

              Padding(padding: EdgeInsets.only(top: 20)),

              Align(
                  alignment: Alignment(-0.5, 0),
                  child: Text("6. 1회 당 간식은 얼마나 주는지 입력해주세요.",
                      style: const TextStyle(
                          color: const Color(0xff7b61ff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "WefontGothic(OTF)-160",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                      textAlign: TextAlign.left)),
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
                          .goToOtherPage(Dog2Page.pageName);
                    },
                    child: Text(
                        "                   강아지체중 입력하기                    >",
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
                          .goToOtherPage(Dog3Page.pageName);
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
      ),
    );
  }
}
