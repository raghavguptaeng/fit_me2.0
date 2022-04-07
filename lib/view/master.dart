import 'package:fit_me/view/Home/home.dart';
import 'package:flutter/material.dart';

class Master extends StatefulWidget {
  const Master({Key? key}) : super(key: key);

  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  int curr = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          IndexedStack(
            index: 0,
            children: [
              SafeArea(child: Home(Uname: 'sdf', uid: 'sdf')),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              width: width * 0.95,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          curr = 0;
                        });
                      },
                      child: Image.asset(curr==0?'Assets/Logo/Home-Active.png':'Assets/Logo/Home.png',scale: 0.9,)),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          curr = 1;
                        });
                      },
                      child: Image.asset(curr==1?'Assets/Logo/Activity-Active.png':'Assets/Logo/Activity.png',scale: 0.9,)),
                  Image.asset('Assets/Logo/Search.png',scale: 0.9,),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          curr = 2;
                        });
                      },
                      child: Image.asset(curr==2?'Assets/Logo/Camera-Active.png':'Assets/Logo/Camera.png',scale: 0.9,)),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          curr = 3;
                        });
                      },
                      child: Image.asset(curr==3?'Assets/Logo/Profile-Active.png':'Assets/Logo/Profile.png',scale: 0.9,)),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
