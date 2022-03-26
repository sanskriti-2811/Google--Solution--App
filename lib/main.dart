import 'package:first_app/current%20_location.dart';
import 'package:first_app/google_map.dart';
import 'package:first_app/human_buttons.dart';
import 'package:first_app/login.dart';
import 'package:first_app/plants_buttons.dart';
import 'package:first_app/register.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/image.jpg'),
        nextScreen: login(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}

class login extends StatefulWidget {
  const login({Key key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyLogin(),
    );
  }
}

class name extends StatelessWidget {
  const name({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(183, 101, 29, 116),
          title: Text("BE A HELPING HANDS"),
        ),
        body: homePage(),
      ),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://cdn.vectorstock.com/i/preview-1x/29/98/teamwork-people-helping-logo-vector-1262998.webp'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 244, 225, 54), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => second_Page()),
              );
            },
            child: Text('HUMANS'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 54, 244, 212), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {},
            child: Text('ANIMALS'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 82, 244, 54), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => plants_buttons()),
              );
            },
            child: Text('PLANTS'),
          )
        ],
      ),
    );
  }
}

class second_Page extends StatelessWidget {
  const second_Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(183, 101, 29, 116),
        title: Text("HUMANS"),
      ),
      body: Humans_buttons(),
    );
  }
}

class third extends StatefulWidget {
  const third({Key key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrentLocationScreen(),
    );
  }
}
