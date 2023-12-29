import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_project/Navigation%20Drawer/contact.dart';

class MyNavDrawer extends StatelessWidget {
  const MyNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        title: const Text('Navigation Drawer'),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text("Main Contents"),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Sita Kumari"),
            accountEmail: Text("sita@fmail.com"),
            currentAccountPicture: ClipOval(
              child: Image(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/927570754/photo/beautiful-woman.jpg?s=1024x1024&w=is&k=20&c=vqLr2Gnv3M44AlknZESOF6dUkZbNNavcXYEcodRdZ2c="),
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1508615039623-a25605d2b022?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D"),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: const Text(
              "Home",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            leading: const Icon(
              Icons.home,
            ),
          ),
          const ListTile(
            title: Text(
              "Favorite",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.favorite,
            ),
          ),
          const ListTile(
            title: Text(
              "Setting",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.settings,
            ),
          ),
          const ListTile(
            title: Text(
              "Inbox",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.inbox,
            ),
          ),
          const ListTile(
            title: Text(
              "Rate",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.star,
            ),
          ),
          ListTile(
            onTap: () {
              //Despose Drawer after navigate
              Navigator.pop(context);
              //For Navigate to next screen
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Contact()));
            },
            title: const Text(
              "Contact",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            leading: const Icon(
              Icons.contact_page,
            ),
          ),
          const ListTile(
            title: Text(
              "Share",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.share,
            ),
          ),
          ListTile(
            onTap: () {
              SystemNavigator.pop();
            },
            title: const Text(
              "Exit",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            leading: const Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
    );
  }
}
