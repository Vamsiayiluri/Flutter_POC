import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'India', flag: 'India.png', url: 'Asia/Kolkata'),
    WorldTime(location: 'Egypt', flag: 'egypt.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Germany', flag: 'germany.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Greece', flag: 'greece.png', url: 'Europe/Athens'),
    WorldTime(location: 'Indonesia', flag: 'indonesia.png', url: 'Asia/Jakarta'),
    WorldTime(location: 'Kenya', flag: 'kenya.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'South Korea', flag: 'south_korea.png', url: 'Asia/Seoul'),
    WorldTime(location: 'United Kingdom', flag: 'uk.png', url: 'Europe/London'),
    WorldTime(location: 'United States', flag: 'usa.png', url: 'America/New_York'),
  ];

  void updateTime(index) async{
    WorldTime worldTime = locations[index];
    await worldTime.getTime();
    Navigator.pop(context, {
      'location':worldTime.location,
      'flag':worldTime.flag,
      'time':worldTime.time,
      'isDayTime': worldTime.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context,index){
            return Card(
              child:ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(
                  locations[index].location
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              )
            );
          }
      )
    );
  }
}
