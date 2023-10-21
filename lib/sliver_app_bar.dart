import 'package:flutter/material.dart';

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({super.key});

  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: CustomScrollView(slivers: [
        SliverAppBar(
          centerTitle: true,
          title: const Text("SliverAppBar"),
          expandedHeight: 300, //height of SliverAppBar
          flexibleSpace: FlexibleSpaceBar(
              background: Container(
            color: Colors.pinkAccent,
          )
              //  Image.network(
              //   "https://plus.unsplash.com/premium_photo-1665952050053-31ac47c6ff4b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80",
              //   fit: BoxFit.cover,
              // ),
              // title: const Text("Sliver App Bar"),
              ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20)),
              height: 300,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20)),
              height: 300,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20)),
              height: 300,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20)),
              height: 300,
            ),
          ),
        ),
      ]),
    );
  }
}
