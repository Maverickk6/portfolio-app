import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Text('My Portfolio'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage('assets/images/Eddy.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(width: 3, color: Colors.white)),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Edidiong Ekpo', style: TextStyle(fontSize: 22)),
                      Text('Mobile Developer at', style: TextStyle(fontSize: 16)),
                      Text('Uyo, Akwa Ibom state.',
                          style: TextStyle(fontSize: 16)),
                          Text('09066898689',
                          style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only( top: 10.0),
              padding: EdgeInsets.all( 8.0),
                child: Center(
                  child: Text(
              'Check out my profile and works on:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
              ),
            ),
                )),
            Container(
              margin: EdgeInsets.all(10.0),
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(width: 3, color: Colors.white)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text('GITHUB', style: TextStyle(fontSize: 16))),
                  Center(child: Text('@maverickk6', style: TextStyle(fontSize: 16)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(width: 3, color: Colors.white)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text('LINKED-IN', style: TextStyle(fontSize: 16))),
                  Center(child: Text('linkedin.com/in/ekpo-edidiong-46607b69', style: TextStyle(fontSize: 16)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(width: 3, color: Colors.white)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text('TWITTER', style: TextStyle(fontSize: 16))),
                  Center(child: Text('@eddymav', style: TextStyle(fontSize: 16)))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
