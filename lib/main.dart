import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9CE3B),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  spreadRadius: -5,
                  blurRadius: 0,
                  offset: const Offset(10, 10),
                ),
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color(0xFFF9CE3B),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/illustration-article.svg'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Learning Tag
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF9CE3B),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'Learning',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Figtree-ExtraBold',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Published Date
                      const Text(
                        'Published 21 Dec 2023',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Figtree-SemiBold',
                        ),
                      ),
                      const SizedBox(height: 15),

                      // Title
                      MouseRegion(
                        onEnter: (event) => setState(() => _isHovering = true),
                        onExit: (event) => setState(() => _isHovering = false),
                        child: Text(
                          'HTML & CSS foundations',
                          style: TextStyle(
                            fontFamily: 'Figtree-ExtraBold',
                            fontSize: 25,
                            color: _isHovering
                                ? const Color(0xFFF9CE3B)
                                : Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Description
                      const Text(
                        'These languages are the backbone of every website, defining structure, content, and presentation.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontFamily: 'Figtree-SemiBold',
                        ),
                      ),
                      const SizedBox(height: 30),

                      // Author Section
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                                'assets/image-avatar.jpg'), // Replace with author image
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Greg Hooper',
                            style: TextStyle(
                              fontFamily: 'Figtree-ExtraBold',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
