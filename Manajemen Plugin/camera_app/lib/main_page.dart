import 'dart:io';

import 'package:camera_app/camera_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              width: 300,
              height: 450,
              color: Colors.grey[200],
              child: (imageFile != null)
                  ? Image.file(imageFile!)
                  : const SizedBox(),
            ),
            ElevatedButton(
                onPressed: () async {
                  final File? selectedFile = await Navigator.push<File?>(
                    context,
                    MaterialPageRoute(builder: (_) => const CameraPage()),
                  );

                  if (selectedFile != null) {
                    setState(() {
                      imageFile = selectedFile;
                    });
                  }
                },
                child: const Text('Take Picture'))
          ],
        ),
      ),
    );
  }
}
