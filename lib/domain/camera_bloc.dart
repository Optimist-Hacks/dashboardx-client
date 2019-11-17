import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dashboardx/service/api_service.dart';
import 'package:dashboardx/utils/log.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';

const _tag = "camera_bloc";

class CameraBloc {
  ApiService _apiService;
  CameraController _controller;
  final FaceDetector _faceDetector =
      FirebaseVision.instance.faceDetector(FaceDetectorOptions());
  File _imageFile;

  BehaviorSubject<File> _imageTakenSubject = BehaviorSubject();

  Stream<File> get imageTaken => _imageTakenSubject;

  CameraBloc(this._apiService) {
    _init();
  }

  void dispose() {
    _imageTakenSubject.close();
    _faceDetector.close();
  }

  Future<void> _init() async {
    final cameras = await availableCameras();

    final camera = cameras.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front,
      orElse: () => cameras.first,
    );
    _controller = CameraController(
      camera,
      ResolutionPreset.ultraHigh,
      enableAudio: false,
    );

    await _controller.initialize();

    final Directory dir = await getApplicationDocumentsDirectory();
    final imagePath = '${dir.path}/image.jpg';
    _imageFile = File(imagePath);

    _takePicture();
  }

  void _takePicture() async {
    await Future.delayed(Duration(seconds: 6));
    if (_controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      _takePicture();
      return null;
    }

    if (await _imageFile.exists()) {
      await _imageFile.delete();
    }

    try {
      await _controller.takePicture(_imageFile.path);
    } catch (e) {
      Log.e(_tag, e);
      _controller.dispose();
      await _controller.initialize();
    }
    Log.d(_tag, "Picure taken for path: ${_imageFile.path}");
    _imageTakenSubject.add(_imageFile);

    final hasFace = await extractFace(_imageFile);
    if (hasFace) {
      final bytes = await _imageFile.readAsBytes();
      await _apiService.uploadImage(bytes);
    }
    _takePicture();
  }

  Future<bool> extractFace(File imageFile) async {
    try {
      final FirebaseVisionImage visionImage =
          FirebaseVisionImage.fromFile(imageFile);

      final List<Face> faces = await _faceDetector.processImage(visionImage);

      Log.d(_tag, "${faces.length} faces detected!");
      return faces.isNotEmpty;
    } catch (e) {
      Log.e(_tag, e);
      return false;
    }
  }
}
