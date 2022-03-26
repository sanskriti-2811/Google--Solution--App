import 'package:first_app/upload_image.dart';
import 'package:flutter/material.dart';

class plants_buttons extends StatefulWidget {
  const plants_buttons({Key key}) : super(key: key);

  @override
  State<plants_buttons> createState() => _plants_buttonsState();
}

class _plants_buttonsState extends State<plants_buttons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 244, 225, 54), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => myhomepage()),
              );
            },
            child: Text('Scan '),
          ),
        ],
      ),
    );
  }
}
