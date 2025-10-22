import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/pages/homepage.dart';
import 'package:loginapp/pages/web_view.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
        case RoutePath.home:
          return pageRoute(Homepage());
        case RoutePath.webViewPage:
          return pageRoute(WebViewPage(title: ""),settings: settings);
    }
    return pageRoute(Scaffold(
      body:SafeArea(
        child: Center(
          child:Text("404 route path not exsit")
      ))));
  }


  static MaterialPageRoute pageRoute(Widget page, {
    RouteSettings? settings,
    bool? fullscreenDialog, 
    bool? maintainState,
    bool? allowSnapshotting}){
      return MaterialPageRoute(builder: (context){
        return page;
      },
      settings: settings,
      fullscreenDialog: fullscreenDialog ?? false,
      maintainState: maintainState?? false,
      allowSnapshotting: allowSnapshotting?? true,
      );
  }
}

class RoutePath{
  // 定义地址
  static const String home = "/";
  static const String webViewPage = "/web_view_page";
  // 注册地址
}