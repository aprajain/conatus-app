import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Exp extends StatefulWidget {
  @override
  _ExpState createState() => _ExpState();
}

class _ExpState extends State<Exp> {
  File _image;
  String _imagepath;

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      var cropped = await ImageCropper.cropImage(
        sourcePath: image.path,
        maxHeight: 100,
        maxWidth: 100,
        aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
        cropStyle: CropStyle.circle,
        compressQuality: 100,
      );
      this.setState(() {
        _image = cropped;
      });
      saveImage(_image.path);
    }
  }

  void saveImage(path) async {
    SharedPreferences saveimage = await SharedPreferences.getInstance();
    saveimage.setString('imagepath', path);
  }

  void LoadImage() async {
    SharedPreferences saveimage = await SharedPreferences.getInstance();
    setState(() {
      _imagepath = saveimage.getString('imagepath');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadImage();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _getImage,
      child: Container(
        //padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 5.0,
          ),
          shape: BoxShape.circle,
        ),

        child: _imagepath != null
            ? CircleAvatar(
                backgroundImage: FileImage(File(_imagepath)),
                radius: 60,
              )
            : CircleAvatar(
                backgroundImage: _image != null
                    ? FileImage(_image)
                    : AssetImage('assets/mypic1.jpg'),
                backgroundColor: Colors.blue[200],
                radius: 60,
              ),
      ),
    );
  }
}
