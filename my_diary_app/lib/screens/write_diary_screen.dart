import 'package:flutter/material.dart';

class WriteDiaryScreen extends StatelessWidget {
  const WriteDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write Diary'),
      ),
      body: const Center(
        child: Text('Write your diary here.'),
      ),
    );
  }
}
