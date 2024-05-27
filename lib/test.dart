// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFFF9CE3B), // Yellow background
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Card(
//               elevation: 5,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16.0),
//               ),
//               color: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize:
//                       MainAxisSize.min, // To shrink the card vertically
//                   children: [
//                     // Image Section
//                     Container(
//                       height: 150,
//                       decoration: const BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(16.0),
//                           topRight: Radius.circular(16.0),
//                         ),
//                         image: AssetImage(
//                             'assets/image.png'), // Replace with your image
//                         color: Color(
//                             0xFFF9CE3B), // Yellow background for the image
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Learning Tag
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 5),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFFF9CE3B),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: const Text(
//                         'Learning',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     const SizedBox(height: 10),

//                     // Published Date
//                     const Text('Published 21 Dec 2023',
//                         style: TextStyle(color: Colors.grey)),
//                     const SizedBox(height: 15),

//                     // Title
//                     const Text(
//                       'HTML & CSS foundations',
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                     ),
//                     const SizedBox(height: 10),

//                     // Description
//                     const Text(
//                       'These languages are the backbone of every website, defining structure, content, and presentation.',
//                       style: TextStyle(fontSize: 16),
//                     ),
//                     const SizedBox(height: 20),

//                     // Author Section
//                     Row(
//                       children: [
//                         const CircleAvatar(
//                           radius: 20,
//                           backgroundImage: AssetImage(
//                               'assets/profile_pic.jpg'), // Replace with author image
//                         ),
//                         const SizedBox(width: 10),
//                         const Text(
//                           'Greg Hooper',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 16),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
