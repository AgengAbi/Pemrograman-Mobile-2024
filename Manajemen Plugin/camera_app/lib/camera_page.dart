import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;

  Future<void> initialzeCamera() async {
    var cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    await controller.initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<File?> takePicture() async {
    try {
      // Mendapatkan direktori sementara untuk menyimpan gambar
      Directory root = await getTemporaryDirectory();
      String directoryPath = '${root.path}/Guided_Camera';
      await Directory(directoryPath).create(recursive: true);
      String filePath = '$directoryPath/${DateTime.now()}.jpg';

      // Mengambil gambar dan menyimpan ke file path
      XFile picture = await controller.takePicture();
      File imageFile = File(filePath);
      return await picture.saveTo(filePath).then((_) => imageFile);
    } catch (e) {
      // Jika terjadi error, kembalikan null
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
          future: initialzeCamera(),
          builder: (_, snapshot) =>
              (snapshot.connectionState == ConnectionState.done)
                  ? Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width /
                                  controller.value.aspectRatio,
                              child: CameraPreview(controller),
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              margin: const EdgeInsets.only(top: 50),
                              child: ElevatedButton(
                                  onPressed: () async {
                                    if (!controller.value.isTakingPicture) {
                                      File? result = await takePicture();
                                      Navigator.pop(context, result);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text('P')),
                            )
                          ],
                        ),
                        // SizedBox(
                        //       width: MediaQuery.of(context).size.width,
                        //       height: MediaQuery.of(context).size.width /
                        //           controller.value.aspectRatio,
                        //       child: Image.asset('assets/'),
                        //     ),
                      ],
                    )
                  : const Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(),
                      ),
                    )),
    );
  }
}
