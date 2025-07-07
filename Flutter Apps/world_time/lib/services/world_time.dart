import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String  location="";
  String time="";
  String url="";
  String flag="";
  bool isDaytime=true;

  WorldTime({required this.location,required this.flag, required this.url});

  Future<void> getTime() async {
    try{
      Response response= await get(Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$url'));
      Map data = jsonDecode(response.body);
      String dateTimeStr=data['dateTime'];
      DateTime dateTime = DateTime.parse(dateTimeStr);
      isDaytime=dateTime.hour > 6 && dateTime.hour < 19 ? true : false ;
      time=DateFormat.jm().format(dateTime);
    }catch(e){
      print('error : $e');
      time='Could not get time';
    }


  }
}