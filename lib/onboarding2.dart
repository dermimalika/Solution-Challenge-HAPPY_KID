import 'package:flutter/material.dart';
import 'package:happy_kid/onboarding3.dart';

class onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfffdeb6d),
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allowsr
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),

          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[

                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(50.0),),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/happ.png")

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),),
                  Text(
                    "    Are you a charity association so help us suggesting kids who deserve to live happily",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Color(0xffec644e),


                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),),
                    Text(
                      " Or you can just check what associations suggested and help! ",
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xffec644e),

                      ),
                    ),

                ],
              ),


              Column(
                children: <Widget>[

                  // creating the next button
                  SizedBox(height:20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> onboarding3()));

                    },
                    color: Color(0xffec644e),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
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