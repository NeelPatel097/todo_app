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

  var appColors = [Color.fromRGBO(231, 129, 109, 1.0), Color.fromRGBO(99, 138, 223, 1.0), Color.fromRGBO(111, 194, 173, 1.0)];
  var cardIndex = 0;
  late ScrollController scrollController;
  var currentColor = Color.fromRGBO(231, 129, 109, 1.0);

  var cardList = [CardItemModel("Personal", Icons.account_circle, 9, 0.083), CardItemModel("Work", Icons.work, 12, 0.24), CardItemModel("Home", Icons.home, 7, 0.32)];

  @override
  void initState(){
    super.initState();
    scrollController = new ScrollController();
  }

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
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
                child: Text("Today : September 3, 2021", style: TextStyle(color: Colors.white),),
              ),
              Container(
                height: 350.0,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    controller: scrollController,
                    itemBuilder: (context, position) {
                      return GestureDector(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Container(
                              width: 250.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Icon(cardsList[])
                                        ],
                                      ),)
                                ],
                              ),
                            ),
                          ),
                        )
                      )
                    }),
              )
            ],
          )
        ],
    ),

    );
  }
}
