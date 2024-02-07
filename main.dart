import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('background_image.jpg'), // Replace 'assets/background_image.jpg' with your image path
                  opacity: 0.5, // Adjust the opacity value (0.0 - 1.0) here
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Center(
            child: Container(
              decoration: BoxDecoration(
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('logo.png', width: 300.0 ), // Replace 'assets/logo.png' with your image path
                  ),
                  SizedBox(height: 50.0),
                  ElevatedButton(
                    onPressed: () {
                      // Login button pressed
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Register button pressed
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                      child: Text(
                        'Register(Alumni)',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
