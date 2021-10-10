import 'package:fit_me/Authentication/Signup/sign_up.dart';
import 'package:fit_me/Splash%20Screens/splash_1.dart';
import 'package:fit_me/Splash%20Screens/welcome.dart';
import 'package:flutter/material.dart';

import 'Splash Screens/splash_2.dart';
import 'Splash Screens/splash_3.dart';
import 'Splash Screens/splash_4.dart';

void main() {
  runApp(const init());
}
class init extends StatelessWidget {
  const init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: welcome.id,
      routes: {
        welcome.id:(context)=>welcome(),
        Splash1.id:(context)=>Splash1(),
        Splash2.id:(context)=>Splash2(),
        Splash3.id:(context)=>Splash3(),
        Splash4.id:(context)=>Splash4(),
        SignUp.id:(context)=>SignUp(),
      },
    );
  }
}

