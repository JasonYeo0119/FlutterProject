import 'dart:io';
import 'dart:typed_data'; // Add this import for Uint8List
import 'package:open_file/open_file.dart';
import 'dart:html' as html;
import 'dart:convert';// Import dart:html for web-specific functionality
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb; // Add this import for kIsWeb
import 'package:flutter/material.dart';
import 'PaymentMethod.dart';
import 'Successful.dart';

class UploadSS extends StatefulWidget {
  const UploadSS({Key? key}) : super(key: key);

  @override
  State<UploadSS> createState() => _UploadSSState();
}
class _UploadSSState extends State<UploadSS> {
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedfile;
  bool isLoading = false;
  File? fileToDisplay;

  DatabaseReference _databaseReference =
  FirebaseDatabase.instance.reference().child('file_metadata');

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Paymentmethod();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Successful();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
        child: Column(
      children: [
        Container(
          width: 390,
          height: 777,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFE5FFFC)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0xFFFFFBA9)),
                ),
              ),
              Positioned(
                left: 81,
                top: 12,
                child: SizedBox(
                  width: 230,
                  height: 40,
                  child: Text(
                    'Premium Plan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 321,
                top: 51,
                child: Container(width: 60, height: 60),
              ),
              Positioned(
                left: 30,
                top: 80,
                child: SizedBox(
                  width: 335,
                  height: 79,
                  child: Text(
                    'Remember to take a screenshot of your payment and upload at the section as below',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 210,
                child: SizedBox(
                  width: 300,
                  child: Text(
                    'Upload Screenshot',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),


              // Click to upload Payment evidence Container
            Positioned(
                left: 23,
                top: 280,
                child: Container(
                  width: 344,
                  height: 246,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFFBA9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),



              if (isLoading)
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 16),
                        Text(
                          'Uploading...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              // Display selected file name with extension
              Positioned(
                left: 33,
                top: 320,
                child: GestureDetector(
                  onTap: openFile,
                  child: SizedBox(
                    width: 324,
                    height: 27,
                    child: Text(
                      _fileName != null ? 'File selected: $_fileName' : 'No file selected',
                      style: TextStyle(
                        color: Color(0xFF1C4BF2),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        height: 0,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                ),
              ),

              // Click to upload payment button
              Positioned(
                left: 33,
                top: 290,
                child: GestureDetector(
                  onTap: () {
                    pickFile();
                  },
                child: SizedBox(
                  width: 324,
                  height: 27,
                  child: Text(
                    'Click to upload the payment evidence. ',
                    style: TextStyle(
                      color: Color(0xFF1C4BF2),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      height: 0,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              ),


              Positioned(
                left: 201,
                top: 679,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage2(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 163,
                    height: 64,
                    decoration: ShapeDecoration(
                      color: Color(0xFF9ADBBF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 196,
                top: 718,
                child: SizedBox(
                  width: 174,
                  height: 38,
                  child: Text(
                    'Complete',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.05,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 26,
                  top: 679,
                  child: TextButton(
                    onPressed: () {
                      navigateNextPage(context);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 163,
                      height: 64,
                      decoration: ShapeDecoration(
                        color: Color(0xFFDB9A9A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  )),
              Positioned(
                left: 20,
                top: 718,
                child: SizedBox(
                  width: 174,
                  height: 38,
                  child: Text(
                    'Cancel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.05,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    ),
    )
    );
  }


  // Updated pickFile method for web
  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'pdf'],
        allowMultiple: false,
      );

      if (result != null) {
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path!);
        print('File name$_fileName');

        // On web, you can directly use the file content
        uploadFileToFirebaseStorage(pickedfile!.bytes!);
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  // Updated uploadFileToFirebaseStorage method for web
  void uploadFileToFirebaseStorage(Uint8List fileBytes) async {
    try {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      Reference storageReference =
      FirebaseStorage.instance.ref().child('uploads/$fileName');
      UploadTask uploadTask = storageReference.putData(fileBytes);

      await uploadTask.whenComplete(() async {
        // File uploaded successfully, get download URL
        String downloadURL = await storageReference.getDownloadURL();

        // Store file metadata in Realtime Database
        await _databaseReference.push().set({
          'fileName': _fileName,
          'downloadURL': downloadURL,
        });

        print('File uploaded to Firebase Storage');
      });
    } catch (e) {
      print('Error uploading file: $e');
    }
  }

  // Enable the user to download the file
  void openFile() {
    if (fileToDisplay != null) {
      // For mobile
      if (Platform.isAndroid || Platform.isIOS) {
        OpenFile.open(fileToDisplay!.path);
      }
      // For web
      else if (kIsWeb) {
        final Uint8List bytes = fileToDisplay!.readAsBytesSync();

        // Create a Blob with the file content
        final blob = html.Blob([bytes]);

        // Create an object URL for the Blob
        final url = html.Url.createObjectUrlFromBlob(blob);

        // Create an anchor element and simulate a click to trigger the download
        final anchor = html.AnchorElement(href: url)
          ..target = 'blank'
          ..download = _fileName ?? 'download'; // Specify the default file name or use a generic one

        // Simulate a click on the anchor element
        anchor.click();

        // Revoke the object URL to free resources
        html.Url.revokeObjectUrl(url);
      }
    }
  }

}




