import 'package:flutter/material.dart';

class ShowSnackBar extends StatelessWidget {
  const ShowSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                action: SnackBarAction(
                    backgroundColor: Colors.white,
                    label: 'Undo',
                    onPressed: () {}),
                backgroundColor: Colors.red,
                content: const Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Congratulation You are Selected")
                  ],
                )));
          },
          child: const Text("Show Result"),
        ),
      ),
    );
  }
}
