import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/pages/homepage/homepage.dart';

import 'pages/forecastpage/forecastpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Weathering with you',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.grey[900],
        ),
        // home: const Homepage(),
        initialRoute: Homepage.routeName,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case Homepage.routeName:
              return CupertinoPageRoute(
                builder: (context) => Homepage(),
              );
            case Forecastpage.routeName:
              return CupertinoPageRoute(
                builder: (context) => Forecastpage(),
              );
          }
        },
      ),
    );
  }
}
