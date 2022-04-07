import 'package:fit_me/constants/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Profile",style: kBigTextHeading,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.15,
                      decoration: BoxDecoration(
                        color: kPurple,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Image.asset('Assets/images/profImg.png'),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Raghav Gupta",style: kSubTextStyle.copyWith(fontWeight: FontWeight.bold),),
                      Text("Loose a Fat Programe",style: TextStyle(
                        color: Colors.grey,
                      ),),
                    ],
                  ),
                  Container(
                    decoration: kRoundedBigButton,
                    width: width*0.25,
                    height: 40,
                    child: Center(
                      child: Text("Edit",style: kBigButtonText.copyWith(fontSize: 15),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
