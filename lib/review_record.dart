// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Review Record'),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         body: ReviewRecordScreen(),
//       ),
//     );
//   }
// }

// class ReviewRecordScreen extends StatefulWidget {
//   @override
//   _ReviewRecordScreenState createState() => _ReviewRecordScreenState();
// }

// class _ReviewRecordScreenState extends State<ReviewRecordScreen> {
//   bool _isExpanded1 = false;
//   bool _isExpanded2 = false;
//   bool _isExpanded3 = false;

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'You are applying for a ',
//                         style: TextStyle(
//                           fontSize: 13.5,
//                           fontWeight: FontWeight.normal,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       Text(
//                         'Metrobank Cashback Visa',
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.blueAccent,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Image.asset(
//                   'images/metrobankcard.png',
//                   height: 100,
//                   width: 200,
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 30),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Please check the below details if they are all right and then click on proceed',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w300,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 SizedBox(height: 25),
//                 _buildExpandableContainer(
//                   'Basic Details',
//                   _isExpanded1,
//                   _toggleExpand1,
//                   [
//                     'First Name : John',
//                     'Middle Name : Doe',
//                     'Last Name : Smith',
//                     'Email Address : john.doe@example.com',
//                     'Mobile Number : +1 (123) 456-7890',
//                     'DOB : January 1, 1990',
//                     'ID : Passport',
//                     'ID Number : ABC123XYZ'
//                   ],
//                 ),
//                 SizedBox(height: 15),
//                 _buildExpandableContainer(
//                   'Personal Details',
//                   _isExpanded2,
//                   _toggleExpand2,
//                   [
//                     'First Name : Jane',
//                     'Middle Name : Mary',
//                     'Last Name : Johnson',
//                     'Email Address : jane.johnson@example.com',
//                     'Mobile Number : +1 (234) 567-8901',
//                     'DOB : February 2, 1995',
//                     'ID : Driver\'s License',
//                     'ID Number : DEF456UVW'
//                   ],
//                 ),
//                 SizedBox(height: 15),
//                 _buildExpandableContainer(
//                   'Employment Details',
//                   _isExpanded3,
//                   _toggleExpand3,
//                   [
//                     'First Name : Alice',
//                     'Middle Name : Marie',
//                     'Last Name : Williams',
//                     'Email Address : alice.williams@example.com',
//                     'Mobile Number : +1 (345) 678-9012',
//                     'DOB : March 3, 2000',
//                     'ID : National ID',
//                     'ID Number : GHI789JKL'
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildExpandableContainer(String title, bool isExpanded,
//       void Function() toggleExpand, List<String> content) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//       color: Colors.blue[50],
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 90,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     print('Edit Details');
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.zero,
//                   ),
//                   child: Text(
//                     'Edit Details',
//                     style: TextStyle(fontSize: 12),
//                   ),
//                 ),
//               ),
//               IconButton(
//                 icon: Icon(
//                   isExpanded ? Icons.expand_less : Icons.expand_more,
//                 ),
//                 onPressed: toggleExpand,
//               ),
//             ],
//           ),
//           if (isExpanded)
//             Padding(
//               padding: const EdgeInsets.only(left: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: content
//                     .map((item) => Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 5),
//                           child: Text(
//                             item,
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ))
//                     .toList(),
//               ),
//             ),
//         ],
//       ),
//     );
//   }

//   void _toggleExpand1() {
//     setState(() {
//       _isExpanded1 = !_isExpanded1;
//     });
//   }

//   void _toggleExpand2() {
//     setState(() {
//       _isExpanded2 = !_isExpanded2;
//     });
//   }

//   void _toggleExpand3() {
//     setState(() {
//       _isExpanded3 = !_isExpanded3;
//     });
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Review Record'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ReviewRecordScreen(),
      ),
    );
  }
}

class ReviewRecordScreen extends StatefulWidget {
  @override
  _ReviewRecordScreenState createState() => _ReviewRecordScreenState();
}

class _ReviewRecordScreenState extends State<ReviewRecordScreen> {
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You are applying for a ',
                        style: TextStyle(
                          fontSize: 13.5,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Metrobank Cashback Visa',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'images/metrobankcard.png',
                  height: 100,
                  width: 200,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please check the below details if they are all right and then click on proceed',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 25),
                _buildExpandableContainer(
                  'Basic Details',
                  _isExpanded1,
                  _toggleExpand1,
                  [
                    'First Name : John',
                    'Middle Name : Doe',
                    'Last Name : Smith',
                    'Email Address : john.doe@example.com',
                    'Mobile Number : +1 (123) 456-7890',
                    'DOB : January 1, 1990',
                    'ID : Passport',
                    'ID Number : ABC123XYZ'
                  ],
                ),
                SizedBox(height: 15),
                _buildExpandableContainer(
                  'Personal Details',
                  _isExpanded2,
                  _toggleExpand2,
                  [
                    'First Name : Jane',
                    'Middle Name : Mary',
                    'Last Name : Johnson',
                    'Email Address : jane.johnson@example.com',
                    'Mobile Number : +1 (234) 567-8901',
                    'DOB : February 2, 1995',
                    'ID : Driver\'s License',
                    'ID Number : DEF456UVW'
                  ],
                ),
                SizedBox(height: 15),
                _buildExpandableContainer(
                  'Employment Details',
                  _isExpanded3,
                  _toggleExpand3,
                  [
                    'First Name : Alice',
                    'Middle Name : Marie',
                    'Last Name : Williams',
                    'Email Address : alice.williams@example.com',
                    'Mobile Number : +1 (345) 678-9012',
                    'DOB : March 3, 2000',
                    'ID : National ID',
                    'ID Number : GHI789JKL'
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableContainer(String title, bool isExpanded,
      void Function() toggleExpand, List<String> content) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      color: Colors.blue[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Center(
                // Aligning Edit Details button to the center
                child: SizedBox(
                  width: 90,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Edit Details');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Edit Details',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  isExpanded ? Icons.expand_less : Icons.expand_more,
                ),
                onPressed: toggleExpand,
              ),
            ],
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: content
                    .map((item) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }

  void _toggleExpand1() {
    setState(() {
      _isExpanded1 = !_isExpanded1;
    });
  }

  void _toggleExpand2() {
    setState(() {
      _isExpanded2 = !_isExpanded2;
    });
  }

  void _toggleExpand3() {
    setState(() {
      _isExpanded3 = !_isExpanded3;
    });
  }
}
