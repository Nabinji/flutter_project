import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        title: const Text('Contact'),
      ),
      body: const Center(
        child: Text('abc@gmail.com'),
      ),
    );
  }
}
