import 'package:flutter/material.dart';

// the main function is starting point for all our flutter apps
/*void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Text('helloworld'),
      ),
    ),
  );
}*/

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 134, 151, 160),

        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),

        body: Center(
          child: Image(
            //image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
            image: AssetImage('images/girl.png'),
          ),
        )
        
      ),
    )
  );
}
