
import 'package:flutter/material.dart';
import 'package:idc/ui/pages/main/main.dart';
class HYRouter{
  static final String initialRoute=HYMainScreen.routeName;
  static final Map<String,WidgetBuilder> routes={
    HYMainScreen.routeName:(ctx)=>HYMainScreen()
  };

  static final RouteFactory generateRoute = (setting){
    return null;
  };
  static final RouteFactory unknownRoute=(setting){
    return null;
  };
}