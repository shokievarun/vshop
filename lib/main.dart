import 'package:flutter/material.dart';
import 'package:flybuy/screens/home/home_screen.dart';
import 'package:flybuy/screens/profile/profile_screen.dart';

import './theme.dart';
import './routes.dart';

import './screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Urban Green',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
