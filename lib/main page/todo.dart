import 'package:dietdog/main%20page/weightcare.dart';
import 'package:dietdog/provider/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dietdog/pages/auth_page.dart';

class TodoPage extends Page{
  static final pageName = 'TodoPage'; 

  @override
  Route createRoute(BuildContext context) {   
   return MaterialPageRoute(settings: this, builder: (context) => TodoWidget()); 
  }
}

class TodoWidget extends StatefulWidget {
  const TodoWidget({ Key? key }) : super(key: key);

  @override
  _TodoWidgetState createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xffffffff),
        
        child: Column(
          children: <Widget> [
        //* 알림표시 _ 로그 입력안 표시 방식 -> 왼쪽 정열 
          Align(
              alignment: Alignment(-0.95,0.0),
              child:  IconButton(
                          icon: Icon(Icons.access_alarm_rounded),
                          //icon: Icon(Icons.calendar_view_month), //달력 형태 고려 _ 월간 
                          color: Color(0xff787878),
                          
                          onPressed: () {  },              //* 표시사항 고려 _ 리스트뷰 형태로 보여주기 팝업 
                        ),        
          ),
           
        //* text _ 강아지 이름 
          Padding(padding : EdgeInsets.only(top : 18)),
           Text( " 목표 체중에 거의 도달했어요! \n 뿌링이와 함께 오늘도 달려보아요.",
            style: const TextStyle(
                color:  const Color(0xff000000),
                fontWeight: FontWeight.w700,
                fontFamily: "NotoSansCJKKR",
                fontStyle:  FontStyle.normal,
                fontSize: 24.0
            ),
            textAlign: TextAlign.left     //text algin 다시 확인            
            ),
    
        //* todo
        Padding(padding : EdgeInsets.only(top : 20)),
        Align(
          alignment: Alignment(-0.85,0.0),
          child: Text(
            "오늘 할 일",
            style: const TextStyle(
                color:  const Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontFamily: "NotoSansKR",
                fontStyle:  FontStyle.normal,
                fontSize: 17
            ),
            textAlign: TextAlign.left                
          ),
        ),

        //* todo 박스 
        Padding(padding : EdgeInsets.only(top : 40)),
        
        //* 4가지 todo fix_ 산책, 식습관, 스트레칭 ,놀이
        //1. 산책 
        Container(
          width: 185*1.7,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
            Radius.circular(18) 
          ),
            boxShadow: [BoxShadow(
                  color: const Color(0x1a000000),
                  offset: Offset(0,4),
                  blurRadius: 4,
                  spreadRadius: 0
              )] ,
            color: const Color(0xffffffff)
          ),
          child: Row(
            children:<Widget> [
              IconButton(
                          icon: Icon(Icons.nordic_walking_rounded),            
                          color: Color(0xff787878),
                          onPressed: () {  },       
                                 
                        ),  
              
              Padding(padding : EdgeInsets.only(left: 40)),  

              Text( "동네 30분 걷기",   //text 값 받기 
              style: const TextStyle(
                  color:  const Color(0xff595959),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Abel",
                  fontStyle:  FontStyle.normal,
                  fontSize: 14
              ),
              textAlign: TextAlign.left                
              ),
              
               Padding(padding : EdgeInsets.only(left: 60)),
              //*시작 버튼 
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: <Widget> [
                    Positioned.fill(
                      child: Container(    
                      //width: 40,
                      //height: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                        Radius.circular(12) 
                      ),
                        boxShadow: [BoxShadow(
                              color: const Color(0x1a000000),
                              offset: Offset(0,4),
                              blurRadius: 4,
                              spreadRadius: 0
                          )] ,
                        color: const Color(0xff7b61ff)
                                      ),
                                       )),
                    TextButton(
                        onPressed : () {
                        Provider.of<PageNotifier>(context, listen : false ).goToOtherPage(AuthPage.pageName); 
                       }, //* 누르면 -> 팝업 방식 
                        
                        child : Text("시작",
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "GmarketSans",
                              fontStyle:  FontStyle.normal,
                              fontSize: 12
                          ),
                          textAlign: TextAlign.start               
                          )
                      ),
                  ]               
                  ),
                ),
            ],
          )
        ),
        
        Padding(padding : EdgeInsets.only(top : 20)),
        //2. 식습관 
        Container(
          width: 185*1.7,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
            Radius.circular(18) 
          ),
            boxShadow: [BoxShadow(
                  color: const Color(0x1a000000),
                  offset: Offset(0,4),
                  blurRadius: 4,
                  spreadRadius: 0
              )] ,
            color: const Color(0xffffffff)
          ),
          child: Row(
            children:<Widget> [
              IconButton(
                          icon: Icon(Icons.nordic_walking_rounded),            
                          color: Color(0xff787878),
                          onPressed: () {  },       
                                 
                        ),  
              
              Padding(padding : EdgeInsets.only(left: 40)),  

              Text( "동네 30분 걷기",   //text 값 받기 
              style: const TextStyle(
                  color:  const Color(0xff595959),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Abel",
                  fontStyle:  FontStyle.normal,
                  fontSize: 14
              ),
              textAlign: TextAlign.left                
              ),
              
               Padding(padding : EdgeInsets.only(left: 60)),
              //*시작 버튼 
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: <Widget> [
                    Positioned.fill(
                      child: Container(    
                      //width: 40,
                      //height: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                        Radius.circular(12) 
                      ),
                        boxShadow: [BoxShadow(
                              color: const Color(0x1a000000),
                              offset: Offset(0,4),
                              blurRadius: 4,
                              spreadRadius: 0
                          )] ,
                        color: const Color(0xff7b61ff)
                                      ),
                                       )),
                    TextButton(
                        onPressed : () {
                        Provider.of<PageNotifier>(context, listen : false ).goToOtherPage(AuthPage.pageName); 
                       }, //* 누르면 -> 팝업 방식 
                        
                        child : Text("시작",
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "GmarketSans",
                              fontStyle:  FontStyle.normal,
                              fontSize: 12
                          ),
                          textAlign: TextAlign.start               
                          )
                      ),
                  ]               
                  ),
                ),
            ],
          )
        ),
        
        Padding(padding : EdgeInsets.only(top : 20)),
        //3. 산책 
        Container(
          width: 185*1.7,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
            Radius.circular(18) 
          ),
            boxShadow: [BoxShadow(
                  color: const Color(0x1a000000),
                  offset: Offset(0,4),
                  blurRadius: 4,
                  spreadRadius: 0
              )] ,
            color: const Color(0xffffffff)
          ),
          child: Row(
            children:<Widget> [
              IconButton(
                          icon: Icon(Icons.nordic_walking_rounded),            
                          color: Color(0xff787878),
                          onPressed: () {  },       
                                 
                        ),  
              
              Padding(padding : EdgeInsets.only(left: 40)),  

              Text( "동네 30분 걷기",   //text 값 받기 
              style: const TextStyle(
                  color:  const Color(0xff595959),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Abel",
                  fontStyle:  FontStyle.normal,
                  fontSize: 14
              ),
              textAlign: TextAlign.left                
              ),
              
               Padding(padding : EdgeInsets.only(left: 60)),
              //*시작 버튼 
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: <Widget> [
                    Positioned.fill(
                      child: Container(    
                      //width: 40,
                      //height: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                        Radius.circular(12) 
                      ),
                        boxShadow: [BoxShadow(
                              color: const Color(0x1a000000),
                              offset: Offset(0,4),
                              blurRadius: 4,
                              spreadRadius: 0
                          )] ,
                        color: const Color(0xff7b61ff)
                                      ),
                                       )),
                    TextButton(
                        onPressed : () {
                        Provider.of<PageNotifier>(context, listen : false ).goToOtherPage(AuthPage.pageName); 
                       }, //* 누르면 -> 팝업 방식 
                        
                        child : Text("시작",
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "GmarketSans",
                              fontStyle:  FontStyle.normal,
                              fontSize: 12
                          ),
                          textAlign: TextAlign.start               
                          )
                      ),
                  ]               
                  ),
                ),
            ],
          )
        ),
        
        Padding(padding : EdgeInsets.only(top : 20)),
        //4. 산책 
        Container(
          width: 185*1.7,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
            Radius.circular(18) 
          ),
            boxShadow: [BoxShadow(
                  color: const Color(0x1a000000),
                  offset: Offset(0,4),
                  blurRadius: 4,
                  spreadRadius: 0
              )] ,
            color: const Color(0xffffffff)
          ),
          child: Row(
            children:<Widget> [
              IconButton(
                          icon: Icon(Icons.nordic_walking_rounded),            
                          color: Color(0xff787878),
                          onPressed: () {  },       
                                 
                        ),  
              
              Padding(padding : EdgeInsets.only(left: 40)),  

              Text( "동네 30분 걷기",   //text 값 받기 
              style: const TextStyle(
                  color:  const Color(0xff595959),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Abel",
                  fontStyle:  FontStyle.normal,
                  fontSize: 14
              ),
              textAlign: TextAlign.left                
              ),
              
               Padding(padding : EdgeInsets.only(left: 60)),
              //*시작 버튼 
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: <Widget> [
                    Positioned.fill(
                      child: Container(    
                      //width: 40,
                      //height: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                        Radius.circular(12) 
                      ),
                        boxShadow: [BoxShadow(
                              color: const Color(0x1a000000),
                              offset: Offset(0,4),
                              blurRadius: 4,
                              spreadRadius: 0
                          )] ,
                        color: const Color(0xff7b61ff)
                                      ),
                                       )),
                    TextButton(
                        onPressed : () {
                        Provider.of<PageNotifier>(context, listen : false ).goToOtherPage(AuthPage.pageName); 
                       }, //* 누르면 -> 팝업 방식 
                        
                        child : Text("시작",
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "GmarketSans",
                              fontStyle:  FontStyle.normal,
                              fontSize: 12
                          ),
                          textAlign: TextAlign.start               
                          )
                      ),
                  ]               
                  ),
                ),
            ],
          )
        ),
        
        Padding(padding : EdgeInsets.only(top : 20)),
        //* 구분 라인 하나 추가하기 

        Divider( thickness: 0.3, color: const Color(0xffc7c7c7)),

        //* 몸무게 측정 상태 알림 텍스트 _ 측정 여부에 따른 2가지 버전 준비 
        Padding(padding : EdgeInsets.only(top : 20)),
        Text(
          "앗! 오늘은 아직 뿌링이의 몸무게를 입력하지 않으셨네요\n정기적인 몸무게 측정은 다이어트하는데 가장 중요하답니다.",
          style: const TextStyle(
              color:  const Color(0xff8f8f92),
              fontWeight: FontWeight.w500,
              fontFamily: "NotoSansKR",
              fontStyle:  FontStyle.normal,
              fontSize: 8
          ),
          textAlign: TextAlign.left                
        ),
    
        Padding(padding : EdgeInsets.only(top : 20)),
        //* 몸무게 측정하기 버튼 
         Container(width : 185, height : 50, child : TextButton( //기존 flat button 대비 사용 진행
            onPressed : () {
              //Provider.of<PageNotifier>(context, listen : false ).goToOtherPage(AuthPage.pageName); //몸무게 측정 페이지 변경 후 적용 
                showModalBottomSheet<void>(
                  context: context, 
                  builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      color: Colors.white,
                      child: Center( 
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //* 회색 바 
                            Container(
                              width: 17,
                              height: 0.75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                Radius.circular(10) 
                              ),
                                color: const Color(0xffc4c4c4)
                            )
                            ),

                            Padding(padding : EdgeInsets.only(top : 20)),   
                            //* text 몸무게 입력 
                            Text(
                            "뿌링이의 몸무게를 입력해주세요",
                            style: const TextStyle(
                                color:  const Color(0xff59597c),
                                fontWeight: FontWeight.w500,
                                fontFamily: "GmarketSans",
                                fontStyle:  FontStyle.normal,
                                fontSize: 4.0
                            ),
                            textAlign: TextAlign.center                
                            ),
                            Padding(padding : EdgeInsets.only(top : 20)), 
                            //* 몸무게 입력 형태 알림


                            //* 입력 완료 버튼
                            Container(width : 250, height : 20, child : TextButton( //기존 flat button 대비 사용 진행
                              onPressed : () {
                               Provider.of<PageNotifier>(context, listen : false ).goToOtherPage(WeightcarePage.pageName);
                              }, // weight care.dart 페이지로 이동 

                              child : Text("입력을 완료 하였습니다.", style : const TextStyle(
                                  color : const Color(0xffffffff),
                                  fontWeight : FontWeight.w700,
                                  fontFamily : "NotoSansCJKKR",
                                  fontStyle : FontStyle.normal,
                                  fontSize : 14.0
                              ), textAlign : TextAlign.center),), decoration : BoxDecoration(
                                      borderRadius : BorderRadius.all(Radius.circular(24.5)),
                                      color : const Color(0xff7b61ff),
                                  )),
                            Padding(padding : EdgeInsets.only(top : 20)),

                            //* 취소 버튼 
                            Container(width : 250, height : 20, child : TextButton( 
                                      onPressed : () {
                                        //bottom sheet 다시 내려가는 동작 
                                      }, 
                                      child : Text("취소", style : const TextStyle(
                                          color : const Color(0xff737a7b),
                                          fontWeight : FontWeight.w700,
                                          fontFamily : "NotoSansCJKKR",
                                          fontStyle : FontStyle.normal,
                                          fontSize : 10.0
                                      ), textAlign : TextAlign.center),), decoration : BoxDecoration(
                                              borderRadius : BorderRadius.all(Radius.circular(24.5)),
                                              color: const Color(0xffffffff),
                                          )),

                              
                          ],
                        )
                      )
                    
                    );
                  });
            }, //* 누르면 -> 팝업 방식 _ 몸무게 측정하는 하단에서 올라오는 방식 넣기 ( 애니메이션? ) -> 그 페이지에서 완료 누르면 다음 페이지로 이동 _ showmodalbottomsheet
      
            child : Text("오늘의 몸무게 측정하기", style : const TextStyle(
                color : const Color(0xffffffff),
                fontWeight : FontWeight.w700,
                fontFamily : "NotoSansCJKKR",
                fontStyle : FontStyle.normal,
                fontSize : 14.0
            ), textAlign : TextAlign.center),), decoration : BoxDecoration(
                    borderRadius : BorderRadius.all(Radius.circular(15)),
                    color : const Color(0xff7b61ff),
                    boxShadow: [BoxShadow(
                    color: const Color(0x40000000),
                    offset: Offset(0,4),
                    blurRadius: 4,
                    spreadRadius: 0
                    )] ,
                )
         ),
      
       Padding(padding : EdgeInsets.only(top : 40)),
        
      ]
      )
      ),
    );
  }
}