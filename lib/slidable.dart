import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MySlidable extends StatefulWidget {
  const MySlidable({super.key});

  @override
  State<MySlidable> createState() => _MySlidableState();
}

class _MySlidableState extends State<MySlidable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Fluuter Slidable"),
      ),
      body: Center(
        child: Slidable(
            // Starting
            startActionPane: ActionPane(motion: StretchMotion(), children: [
              SlidableAction(
                onPressed: (context) {},
                icon: Icons.delete,
                backgroundColor: Colors.red,
              )
            ]),
            //Ending
            endActionPane: ActionPane(motion: StretchMotion(), children: [
              SlidableAction(
                onPressed: (context) {},
                icon: Icons.favorite,
                backgroundColor: Colors.pinkAccent,
              ),
              SlidableAction(
                onPressed: (context) {},
                icon: Icons.share,
                backgroundColor: Colors.green,
              )
            ]),
            child: Container(
              color: Colors.amber,
              child: const ListTile(
                title: Text(
                  "WhatIlerantoday",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "  Flutter",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.person,
                  size: 45,
                  color: Colors.black,
                ),
              ),
            )),
      ),
    );
  }
}
