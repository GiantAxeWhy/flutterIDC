import 'package:flutter/material.dart';
import 'package:idc/core/router/route.dart';
import 'package:idc/ui/shared/app_theme.dart';

void main() =>runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDC',
      //主题
      theme: HYAppTheme.norTheme,
      //路由
      initialRoute: HYRouter.initialRoute,
      routes:HYRouter.routes,
      onUnknownRoute: HYRouter.unknownRoute,
      onGenerateRoute: HYRouter.generateRoute,
    );
  }
}



