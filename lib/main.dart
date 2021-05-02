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
                      Text('EDIDIONG EKPO', style: TextStyle(fontSize: 22)),
                      Text('Mobile Developer at',
                          style: TextStyle(fontSize: 16)),
                      Text('Uyo, Akwa Ibom state.',
                          style: TextStyle(fontSize: 16)),
                      Text('09066898689',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Check out my profile and works on',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Divider(color: Colors.white, thickness: 2.0, indent: 80.0, endIndent: 80.0, height: 30.0),
            AboutSection('GITHUB', '@maverickk6'),
            AboutSection('LINKED-IN', 'linkedin.com/in/ekpo-edidiong-46607b69'),
            AboutSection('TWITTER', '@eddymav')
          ]),
        ),
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  final String platform;
  final String link;

  const AboutSection(
    this.platform,
    this.link,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 400,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 3, color: Colors.white)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              platform,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              link,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
