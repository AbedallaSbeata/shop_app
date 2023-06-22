import 'package:flutter/material.dart';

import 'Dio/dio.dart';
import 'Shared/cache_helper.dart';
import 'constants/constants.dart';
import 'layout/ShopLayout.dart';
import 'login/login_screen.dart';
import 'onBoarding/on_boarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  Widget widget;
  bool onBoarding = CacheHelper.getData(key: 'onBoarding');
  token = CacheHelper.getData(key: 'token');

  uId = CacheHelper.getData(key: 'uId');

  if(onBoarding != null) {
    if(token != null) widget = ShopLayout();
    else widget = ShopLoginScreen();
  } else
  {
    widget = OnBoardingScreen();
  }

  runApp(MyApp(widget));
}

class MyApp extends StatelessWidget {

  Widget? startWidget;

  MyApp(this.startWidget);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startWidget,
    );
  }
}

