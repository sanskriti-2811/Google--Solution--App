import 'package:first_app/main.dart';
import 'package:first_app/src/pages/index.dart';

import 'package:flutter/material.dart';

class Humans_buttons extends StatefulWidget {
  const Humans_buttons({Key key}) : super(key: key);

  @override
  State<Humans_buttons> createState() => _Humans_buttonsState();
}

class _Humans_buttonsState extends State<Humans_buttons> {
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
                'https://analyticsinsight.b-cdn.net/wp-content/uploads/2021/12/Top-5-Ways-Robots-can-Help-Humans-in-the-Future-2-300x167.jpg'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 244, 225, 54), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => third()),
              );
            },
            child: Text('Google Map'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 54, 244, 212), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IndexPage()),
              );
            },
            child: Text('Voice Call'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 82, 244, 54), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {},
            child: Text('Tips'),
          )
        ],
      ),
    );
  }
}
