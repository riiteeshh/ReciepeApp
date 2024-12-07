import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reciepe_app/pages/others/home_page/home_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String foodPage = '/foodPage';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Map<String, WidgetBuilder> routes = {
      homePage: (context) => HomePage(),
    };
    return (Platform.isIOS)
        ? CupertinoPageRoute(
            builder: routes[settings.name] ??
                (context) => throw const FormatException('No Routes Found'),
          )
        : MaterialPageRoute(
            builder: routes[settings.name] ??
                (context) => throw const FormatException('No Routes Found'),
          );
  }
}
