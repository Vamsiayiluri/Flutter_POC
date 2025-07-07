import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUpWorldTime() async{
    WorldTime worldTime=WorldTime(location: 'India' , flag: 'India.png', url: 'Asia/Kolkata');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments:{
      'location':worldTime.location,
      'flag':worldTime.flag,
      'time':worldTime.time,
      'isDayTime': worldTime.isDaytime,
    });
  }

  @override
  void initState(){

    super.initState();

    setUpWorldTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 80.0,
        ),
      )
    );
  }
}
