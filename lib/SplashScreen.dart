import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'onBoarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return OnBoardingPage();
    }));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(
           child: Container(
             height: 300,
             width: 300,
             child: Lottie.asset('assets/food.json',),
           ),
         ),
          SizedBox(
            height: 30,
          ),
          Text('Welcome!',style: TextStyle(fontSize: 30,color: Colors.white),),
        ],
      )
    );
  }
}

class Blank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

