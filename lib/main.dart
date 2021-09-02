import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red[400],
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("TODO", style: TextStyle(fontSize: 16.0),),
        backgroundColor: Colors.red[400],
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Icon(Icons.account_circle, size: 45.0, color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 12.0),
                    child: Text("Hey Neel", style: TextStyle(fontSize: 30.0, color: Colors.white),),
                  ),
                  Text("Todays Day is great for work.", style: TextStyle(color: Colors.white),),
                  Text("You have 3 tasks to do today", style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          )
        ],
    ),

    );
  }
}
