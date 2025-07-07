import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpandedWidget(),
  ));
}
class ColumnClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello all at Cognine"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Hello"),
                TextButton(
                  onPressed: ()=>{},
                  child:Text('Click'),
                ),
                ElevatedButton(
                    onPressed: ()=>{},
                    child: Text("elevated")
                ),
                Icon(
                    Icons.access_alarm_rounded,
                    color: Colors.red,
                    size: 50.0
                ),
                TextButton.icon(
                  onPressed: ()=>{},
                  icon: Icon(
                    Icons.mail,
                  ),
                  label: Text('mail me'),
                ),
                IconButton(
                  onPressed: ()=>{},
                  icon: Icon(Icons.arrow_left),
                )


              ],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text('One'),
              color: Colors.red,
            ),
            Container(
              padding: EdgeInsets.all(40.0),
              child: Text('Two'),
              color: Colors.amber,
            ),

            Image(
              image: AssetImage('assets/5th.PNG'),
            ),
          ],
        )
    );
  }
}
class ExpandedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Hello all at Cognine"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(
        flex: 4,
        child:Image(
            image: AssetImage('assets/5th.PNG'),
          ),
        ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text('One'),
              color: Colors.red,
            ),
          ),
          Expanded(
            flex:2,
            child:Container(
              padding: EdgeInsets.all(20.0),
              child: Text('Two'),
              color: Colors.amber,
            ),
          ),

          Expanded(
            flex: 2,
            child:Container(
              padding: EdgeInsets.all(20.0),
              child: Text('three'),
              color: Colors.blue,
            ),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "Click ",
          style: TextStyle(color: Colors.white), // 👈 Set text color explicitly
        ),
        onPressed: () =>{
        },
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
class RowClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Hello all at Cognine"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello"),
          TextButton(
              onPressed: ()=>{},
              child:Text('Click'),
          ),
          ElevatedButton(
              onPressed: ()=>{},
              child: Text("elevated")
          ),
          Icon(
              Icons.access_alarm_rounded,
              color: Colors.red,
              size: 50.0
          ),
          TextButton.icon(
            onPressed: ()=>{},
            icon: Icon(
              Icons.mail,
            ),
            label: Text('mail me'),
          ),
          IconButton(
              onPressed: ()=>{},
              icon: Icon(Icons.arrow_left),
          )


        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "Click ",
          style: TextStyle(color: Colors.white), // 👈 Set text color explicitly
        ),
        onPressed: () =>{
        },
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Hello all at Cognine"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: AssetImage('assets/5th.PNG'),
        ),

      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "Click ",
          style: TextStyle(color: Colors.white), // 👈 Set text color explicitly
        ),
        onPressed: () =>{
        },
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}

