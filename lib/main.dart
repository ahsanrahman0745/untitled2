import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyNewWidget()
    );
  }
}


class MyNewWidget extends StatefulWidget {
  const MyNewWidget({super.key});

  @override
  State<MyNewWidget> createState() => _MyNewWidgetState();
}

class _MyNewWidgetState extends State<MyNewWidget> {




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("My Names",style: TextStyle(color: Colors.white),),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Text("data",style: TextStyle(fontSize: 50),)),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
                child: Column(
                  children: [
                    Center(child: Text("data",style: TextStyle(fontSize: 50),)),
                    Center(child: Text("data",style: TextStyle(fontSize: 50),)),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,width: 50,color: Colors.yellow,
                  ),

                  Container(
                    height: 50,width: 50,

                  ),
                ],
              )

            ],
          )),
    );
  }
}
