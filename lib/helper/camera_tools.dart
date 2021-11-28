import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CameraTools {

  static getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      print("image path");
      print(imageFile.path);
      //  File imageFile = File(pickedFile.path);
    }
  }

 static getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      print("image path");
      print(imageFile.path);
    }
  }
}