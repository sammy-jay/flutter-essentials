import 'package:flutter/material.dart';

void main() {
  // WidgetApp, MaterialApp, CupertinoApp
  runApp(
    MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green[400]),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          // clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Colors.amber,
                Colors.yellow,
              ],
            ),
            // shape: BoxShape.circle,
            boxShadow: [
              const BoxShadow(
                color: Colors.green,
                blurRadius: 5,
              ),
            ],
          ),
          child: const Text(
            "I am a box",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              // backgroundColor: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
      ),
    );
  }
}
