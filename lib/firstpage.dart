import 'package:flutter/material.dart';

class FirstPage  extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width : 93.75,
      height: 250,
      decoration: BoxDecoration(color : const Color(0xff7b61ff)),

      padding: EdgeInsets.only(top: 150),
      
   child : Column ( 
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
 
     children :  <Widget> [
      
       RichText(text : TextSpan(
         //crossAxisAlignment: CrossAxisAlignment.center,
         children : [
         TextSpan(style : const TextStyle(
                color : const Color(0xffffffff),
                fontWeight : FontWeight.w500,
                fontFamily : "S-CoreDream-5",
                fontStyle : FontStyle.normal,
                fontSize : 32
            ), text : "관리하개\n배안나오개\n"), //글자간 줄 띄우기 확인하기

         TextSpan(style : const TextStyle(
            color : const Color(0xffffffff),
            fontWeight : FontWeight.w700,
            fontFamily : "S-CoreDream-6",
            fontStyle : FontStyle.normal,
            fontSize : 45
        ), text : "다이어트하개")
                ])),
      ///* 서비스 로고 넣기 
      
      // Rectangle 25 _ 98.2dp / 203 전체 기준 / 배치 가운데 정렬  
      Padding(padding: EdgeInsets.only(top: 298.2)),

      Container(width : 258, height : 50, child : TextButton( //기존 flat button 대비 사용 진행
        onPressed : () {}, // 회원가입 _ join1 페이지로 이동

        child : Text("회원가입", style : const TextStyle(
            color : const Color(0xff7b61ff),
            fontWeight : FontWeight.w700,
            fontFamily : "NotoSansCJKKR",
            fontStyle : FontStyle.normal,
            fontSize : 20.0
        ), textAlign : TextAlign.center),), decoration : BoxDecoration(
                borderRadius : BorderRadius.all(Radius.circular(24.5)),
                color : const Color(0xffffffff),
            )),
     

    /// 간격 3.8dp, 가운대 정렬
      Padding(padding : EdgeInsets.only(top : 23.8)),

    Container(width : 258, height : 50, child : TextButton( //기존 flat button 대비 사용 진행
        onPressed : () {}, // 로그인 버튼 누르면 _ login1 페이지로 이동

        child : Text("로그인", style : const TextStyle(
            color : const Color(0xffffffff),
            fontWeight : FontWeight.w700,
            fontFamily : "NotoSansCJKKR",
            fontStyle : FontStyle.normal,
            fontSize : 20.0
        ), textAlign : TextAlign.center),), decoration : BoxDecoration(
                borderRadius : BorderRadius.all(Radius.circular(24.5)),
                color : const Color(0xff7b61ff)
            )),
     

    ]));
      }
}
