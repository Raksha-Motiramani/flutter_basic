import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          // single child layout widgets

          /*child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.only(left: 30.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text('Hello'),
          ),*/

          // multi child layout widgets

          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //verticalDirection: VerticalDirection.up,
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
               height: 100.0,
               //width: 100.0,
               //width: double.infinity,
               color: Colors.white,
               child: Text('Container 1'),
              ),

              SizedBox(height: 20.0,),

              Container(
                height: 100.0,
                //width: 100.0,
                //width: double.infinity, // stretch entire width of screen
                color: Colors.blue,
                child: Text('Container 2'),
              ),

              Container(
                height: 100.0,
                //width: 100.0,
                //width: double.infinity, 
                color: Colors.yellow,
                child: Text('Container 3'),
              ),

              /*Container(
                width: double.infinity,
                height: 10.0,
              ),*/
            ],
            ),
        ),
      ),
    );
  }
}

