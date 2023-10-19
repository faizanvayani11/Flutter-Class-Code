// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  List<File> selectedImages = [];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    // display image selected from gallery
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Select Multiple Images',
            textScaleFactor: 1.5,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Select Image from Gallery '),
              onPressed: () {
                getImages();
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                "Images You Select",
                textScaleFactor: 3,
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 300.0,
                child: selectedImages.isEmpty
                    ? const Center(child: Text('Sorry nothing selected!!'))
                    : GridView.builder(
                        itemCount: selectedImages.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child: kIsWeb
                                  ? Image.network(selectedImages[index].path)
                                  : Image.file(selectedImages[index]));
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    setState(
      () {
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}











// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class homeView extends StatefulWidget {
//   const homeView({super.key});

//   @override
//   _homeViewState createState() => _homeViewState();
// }

// class _homeViewState extends State {
//   /// Variables
//   File? imageFile;

//   /// Widget
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Image Picker"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 _getFromGallery();
//               },
//               child: Text("PICK FROM GALLERY"),
//             ),
//             Container(
//               height: 40.0,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 _getFromCamera();
//               },
//               child: Text("PICK FROM CAMERA"),
//             ),
//             Container(
//               height: 40.0,
//             ),
//             if (imageFile != null) ...[
//               Image.file(
//                 imageFile!,
//                 fit: BoxFit.cover,
//               )
//             ]
//           ],
//         ));
//   }

//   /// Get from gallery
//   _getFromGallery() async {
//     XFile? pickedFile = await ImagePicker().pickImage(
//       source: ImageSource.gallery,
//     );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }

//   /// Get from Camera
//   _getFromCamera() async {
//     XFile? pickedFile = await ImagePicker().pickImage(
//       source: ImageSource.camera,
//     );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }
// }
