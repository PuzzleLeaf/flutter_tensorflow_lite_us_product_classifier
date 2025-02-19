import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'classifier_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(camera: firstCamera,));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({Key key, this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TFLite US Product Classifier',
      home: ClassifierPage(camera: camera,)
    );
  }
}