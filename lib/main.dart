import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
// stateless widget

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home:  HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        accentColor: Colors.red
      ),
    );
  }
}

//stateful widget

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String mytext = "Hello World";
  
  void _changeText()
  {
     setState(() {
       if(mytext.startsWith("H")){
         mytext = "welcome to myapp";
       }
       else{
        mytext = "Hello World";
       }
     });
  }

  Widget _bodyWidget(){
  return Container(
     padding: const EdgeInsets.all(8.0),
     child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(mytext , style: TextStyle(
            fontSize: 22.0
          ),),

         /* new RaisedButton(
            child: new Text("click" , style: new TextStyle(
              color: Colors.white,
              //fontSize: 20.0,
            ),),
            onPressed: _changeText,
            color: Colors.red,
            )*/

        ],
      ),
     ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Home Page"),
       ),
       body: _bodyWidget(),
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _changeText,
       ),
    );
  }
}
