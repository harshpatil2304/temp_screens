import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proof of Income Upload',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProofOfIncomeUpload(),
    );
  }
}

class ProofOfIncomeUpload extends StatefulWidget {
  @override
  _ProofOfIncomeUploadState createState() => _ProofOfIncomeUploadState();
}

class _ProofOfIncomeUploadState extends State<ProofOfIncomeUpload> {
  String _uploadedFile = ''; // Placeholder for the uploaded file path

  void _takePhoto() {}

  void _uploadFromGallery() {}

  void _proceed() {
    // Handle proceed button pressed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Upload Proof of Income',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0),
            _uploadedFile.isNotEmpty
                ? Image.network(
                    _uploadedFile) // Display uploaded file if available
                : Container(), // Placeholder for uploaded file image
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _uploadFromGallery,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Container(
                      width: 170,
                      height: 125,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.image,
                              size: 37,
                              color: Colors
                                  .lightBlue), // Increased icon size and changed color to light blue
                          SizedBox(height: 10),
                          Text(
                            'Upload From Gallery',
                            style: TextStyle(
                                color: Colors.black), // Set text color to black
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _takePhoto,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Container(
                      width: 170,
                      height: 125,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.camera_alt,
                              size: 37,
                              color: Colors
                                  .blue), // Increased icon size and changed color to blue
                          SizedBox(height: 10),
                          Text(
                            'Take Photo',
                            style: TextStyle(
                                color: Colors.black), // Set text color to black
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _proceed,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                //primary: Colors.blue, // Button background color
              ),
              child: Text(
                'Proceed',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
