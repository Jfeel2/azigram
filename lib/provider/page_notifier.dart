import 'package:dietdog/main.dart';
import 'package:dietdog/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:dietdog/firstpage.dart';
import 'package:dietdog/main page/todo.dart';

class PageNotifier extends ChangeNotifier{
  String _currentPage = AuthPage.pageName;

  String get currentPage => _currentPage;
  

  void goToMain(){
     _currentPage = AuthPage.pageName;
    notifyListeners();
  }
  
  void goToOtherPage(String name){      //해당 page 이름 받기
    _currentPage = name;
    notifyListeners();
  }
}