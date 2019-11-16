import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraBloc {
  CameraController controller;
  String imagePath;

  CameraBloc() {
    _init();
  }

  Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();

    final camera = cameras.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front,
      orElse: () => cameras.first,
    );
    controller = CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: false,
    );

    controller.startImageStream((image) {});
  }
}
