import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'splash_screen.dart';
import 'utils/constants.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.dark().copyWith(
            platform: TargetPlatform.iOS,
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: kPrimaryColor,
          ),

          home: SplashScreen(), // Set the SplashScreen as the initial route
          routes: {
            '/home': (context) => HomeScreen(
                  key: kHomeScreenKey,
                ), // Add the HomeScreen route
          },
        );
      },
    );
  }
}
