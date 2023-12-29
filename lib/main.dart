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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.person,color: Colors.white,),
          actions: [
            Icon(Icons.inbox,color: Colors.white,),
            Icon(Icons.email,color: Colors.white,),
          ],
          centerTitle: true,
          title: Row(
            children: [
              Icon(Icons.home,color: Colors.white,),
              Text("My Names",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              decoration: BoxDecoration(

                  image: DecorationImage(
                  image: AssetImage(
                      "assets/splash-bg.png"
                  )
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(35),
                border: Border.all(
                    width: 5,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.black
                )
              ),

            ),
            /// simple
            Image.network(
                "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            /// simple
            Image.asset(
              "assets/splash-bg.png",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),

            /// Image provider
            Image(
                width: 100,
                height: 100,
                image: NetworkImage(                 "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
            ))


          ],
        ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Text("data 1",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.green,
        //       child: Column(
        //         children: [
        //           Center(child: Text("data 1",style: TextStyle(fontSize: 50),)),
        //           Center(child: Text("data 2",style: TextStyle(fontSize: 50),)),
        //         ],
        //       ),
        //     ),
        //
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Container(
        //           height: 50,width: 50,color: Colors.yellow,
        //         ),
        //
        //         Container(
        //           height: 50,width: 50,
        //           color: Colors.red,
        //         ),
        //       ],
        //     )
        //
        //   ],
        // )
    );
  }
}
