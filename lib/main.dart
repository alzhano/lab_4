import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showFirstImage = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Practice 4")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Task 7: Experiment with BoxFit values
              Image.asset(
                'assets/images/MainPic.jpg',
                height: 200,
                width: 200,
                fit: BoxFit.fitHeight, // BoxFit.fitHeight keeps the height fixed and scales width proportionally
              ),
              Image.asset(
                'assets/images/second.jpg',
                height: 200,
                width: 200,
                fit: BoxFit.contain, // BoxFit.contain scales the image to fit within the box while preserving aspect ratio
              ),

              const SizedBox(height: 20),

              // Task 9: Stack with image, overlay, and text
              Stack(
                children: [
                  Image.asset(
                    'assets/images/MainPic.jpg',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Positioned(
                    top: 100,
                    left: 50,
                    child: Text(
                      "Welcome to Flutter",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Task 10: ElevatedButton
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("SnackBar Shown!")),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    "Show SnackBar",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Task 11: TextButton
              SizedBox(
                width: 200,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Go to Second Screen",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Task 12: OutlinedButton
              SizedBox(
                width: 200,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      showFirstImage = !showFirstImage;
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.black),
                  ),
                  child: const Text(
                    "Toggle Image",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Toggle image display
              Image.asset(
                showFirstImage
                    ? 'assets/images/MainPic.jpg'
                    : 'assets/images/second.jpg',
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Second screen
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: const Center(
        child: Text("This is the second screen!"),
      ),
    );
  }
}
