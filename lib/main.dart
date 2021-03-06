import 'package:fit_me/view/Authentication/Login/login.dart';
import 'package:fit_me/view/Authentication/Signup/sign_up.dart';
import 'package:fit_me/view/Authentication/Signup/take_user_details.dart';
import 'package:fit_me/view/Authentication/Signup/user_preference.dart';
import 'package:fit_me/view/Splash%20Screens/splash_1.dart';
import 'package:fit_me/view/Splash%20Screens/splash_2.dart';
import 'package:fit_me/view/Splash%20Screens/splash_3.dart';
import 'package:fit_me/view/Splash%20Screens/splash_4.dart';
import 'package:fit_me/view/Splash%20Screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const init());
}
class init extends StatelessWidget {
  const init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: welcome.id,
      // initialRoute: Login.id,
      routes: {
        welcome.id:(context)=>welcome(),
        Splash1.id:(context)=>Splash1(),
        Splash2.id:(context)=>Splash2(),
        Splash3.id:(context)=>Splash3(),
        Splash4.id:(context)=>Splash4(),
        SignUp.id:(context)=>SignUp(),
        GetUserDetails.id:(context)=>GetUserDetails(),
        GetUserPreference.id:(context)=>GetUserPreference(),
        Login.id:(context)=>Login(),
      },
    );
  }
}

