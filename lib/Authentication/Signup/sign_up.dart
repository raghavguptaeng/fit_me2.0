import 'package:fit_me/constants.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static String id = '/Signup';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopHeading(),
            SizedBox(
              height: height * 0.4,
              width: width * 0.8,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "First Name",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(),
                        ),
                      ),
                      onChanged: (value){

                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(),
                        ),
                      ),
                      onChanged: (value){

                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(),
                        ),
                      ),
                      onChanged: (value){

                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(),
                        ),
                      ),
                      onChanged: (value){

                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: height*0.08,
                    width: width*0.8,
                    decoration: kRoundedBigButton,
                    child: Center(
                      child: Text("Register",style: kBigTextHeading.copyWith(color: Colors.white),),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container TopHeading() {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              "Hey There,",
              style: kSubTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            Text(
              "Create An Account",
              style: kBigTextHeading.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
