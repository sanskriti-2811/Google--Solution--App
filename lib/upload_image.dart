import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class myhomepage extends StatefulWidget {
  const myhomepage({Key key}) : super(key: key);

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  File _image;
  final imagePicker = ImagePicker();
  Future getImage() async {
    // ignore: deprecated_member_use
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    // ignore: deprecated_member_use
    
    setState(() {
      _image = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _image == null ? Text("No Image Selected") : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        backgroundColor: Colors.blue,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
