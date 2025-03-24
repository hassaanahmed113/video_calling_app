import 'package:flutter/material.dart';

import 'video_calling_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController numberController = TextEditingController();

  @override
  void dispose() {
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/zego_cloud_logo.png"),
            const SizedBox(height: 20),
            TextField(
              controller: numberController,
              keyboardType: TextInputType.phone,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              decoration: const InputDecoration(
                fillColor: Colors.blue,
                filled: true,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => VideoCallingScreen(
                      callId: numberController.text,
                    ),
                  ),
                );
              },
              child: const Text(
                "Start video call",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
