import 'package:flutter/material.dart';
import 'package:google_maps_example/map.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapsPage(),
                  ),
                );
              },
              child: const Text(
                "Go to Google map",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
