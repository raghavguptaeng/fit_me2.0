import 'package:fit_me/constants.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static String id = '/Signup';
  String first_name = '' , last_name = '' , email = '' , password = '';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: height*0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopHeading(),
                SizedBox(
                  height: height * 0.4,
                  width: width * 0.8,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: kInputTextDecoration.copyWith(
                              hintText: "First Name",
                            prefixIcon: Icon(Icons.person),
                          ),
                          onChanged: (value){
                            this.first_name = value;
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
                          decoration: kInputTextDecoration.copyWith(
                            prefixIcon: Icon(Icons.person),
                            labelText: "Last Name",
                          ),
                          onChanged: (value){
                            this.last_name = value;
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
                          decoration: kInputTextDecoration.copyWith(
                              hintText: "Email",
                              prefixIcon: Icon(Icons.email_outlined,)),
                          onChanged: (value){
                              this.email = value;
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
                          decoration: kInputTextDecoration.copyWith(prefixIcon: Icon(Icons.password),
                            labelText: "Password",),
                          onChanged: (value){
                            this.password = value;
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
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
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
                      RowWithOrandLine(width),
                      Container(
                        height: height*0.1,
                        width: height*0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.black,width: 2)
                        ),
                        child: Center(
                          child: Image.asset("Assets/Logo/google.png",height: height*0.8,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row RowWithOrandLine(double width) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width*0.4,
                      height: 0.5,
                      color: Colors.black,
                    ),
                    Text("OR",style: kBigTextHeading.copyWith(fontSize: 20),),
                    Container(
                      width: width*0.4,
                      height: 0.5,
                      color: Colors.black,
                    )
                  ],
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
