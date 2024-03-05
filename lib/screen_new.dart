import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'prefill_check.dart';

class SegmentationScreen extends StatefulWidget {
  const SegmentationScreen({Key? key}) : super(key: key);

  @override
  State<SegmentationScreen> createState() {
    return _SegmentationScreenState();
  }
}

class _SegmentationScreenState extends State<SegmentationScreen> {
  bool optionSelected = false;
  int selectedOptionIndex = -1;
  int currentCardIndex = 0;
  TextEditingController segmentFirstnameController = TextEditingController();
  TextEditingController segmentLastNameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? _validateNameField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field cannot be left empty';
    }
    final RegExp nameRegExp = RegExp(r'^[a-zA-Z\s]+$');
    if (!nameRegExp.hasMatch(value)) {
      return 'Invalid characters.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Know your Eligibility'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      'You are applying for a',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.67),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                    child: Container(
                      width: double.infinity,
                      height: 250.0, // Adjust the height as needed
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          height: 250.0, // Same as container height
                          viewportFraction:
                              0.8, // Adjust the fraction as needed
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            // Update the current card index when the page changes
                            setState(() {
                              currentCardIndex = index;
                              print('Current Card Index: $index ');
                            });
                          },
                        ),
                        items: [
                          // Carousel images
                          // Your carousel items here
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: LinearProgressIndicator(
                    value: 0.2,
                    backgroundColor: Colors.grey,
                    color: Colors.blue,
                    minHeight: 10,
                  ),
                ),
                const SizedBox(height: 20),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const Text(
                        'Are you an existing Metrobank Card client?',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      buildOption('Yes, I have a Metrobank Credit Card', 0),
                      buildOption('Yes, I have a Metrobank Deposit Account', 1),
                      buildOption(
                          'No, I am not an existing Metrobank client', 2),
                      if (selectedOptionIndex == 1)
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fill the Details Below:',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 1, 84, 228),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                'First Name',
                                style: TextStyle(fontSize: 16),
                              ),
                              TextFormField(
                                controller: segmentFirstnameController,
                                validator: _validateNameField,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                'Last Name',
                                style: TextStyle(fontSize: 16),
                              ),
                              TextFormField(
                                controller: segmentLastNameController,
                                validator: _validateNameField,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                if (selectedOptionIndex == 1)
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: optionSelected
                            ? () async {
                                // Handle button press
                              }
                            : null,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 1, 108, 197)),
                          fixedSize: MaterialStateProperty.all(
                            Size(450, 50),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        child: const Text('Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800, // Make text bold
                            )),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          // Implement cancel action here
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          fixedSize: MaterialStateProperty.all(
                            Size(450, 50), // Set the fixed size
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 104, 189),
                            fontWeight: FontWeight.w800, // Make text bold
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildOption(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          optionSelected = true;
          selectedOptionIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedOptionIndex == index ? Colors.black87 : Colors.black,
          ),
          color: selectedOptionIndex == index
              ? Colors.lightBlue[50]
              : Colors.transparent,
          borderRadius: BorderRadius.circular(
              5), // Setting border radius for rounded corners
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(
                20), // Increase padding for bigger rectangular boxes
            child: Text(
              text,
              style: TextStyle(
                  color: selectedOptionIndex == index
                      ? Colors.black87
                      : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
