import 'dart:io';

import 'package:dashboardx/domain/camera_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _tag = "photo_page";

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  CameraBloc _cameraBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _cameraBloc ??= Provider.of<CameraBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<File>(
        stream: _cameraBloc.imageTaken,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          }

          final imageFile = snapshot.data;

          return Image.file(imageFile);
        },
      ),
    );
  }
}
