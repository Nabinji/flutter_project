import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Drawer'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 7, 255, 222),
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 14, 161, 230)),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        "https://media.cnn.com/api/v1/images/stellar/prod/221208164147-argentina-lionel-messi.jpg?c=16x9&q=h_720,w_1280,c_fill"),
                  ),
                  Text(
                    "My Profile",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: const Text(
              "Home",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            title: const Text(
              "Favorite",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.mail,
              color: Colors.red,
            ),
            title: const Text(
              "Inbox",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: const Text(
              "Setting",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
