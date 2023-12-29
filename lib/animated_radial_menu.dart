// import 'package:animated_radial_menu/animated_radial_menu.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFE4DCCF),
//       appBar: AppBar(
//         backgroundColor: Color(0xFF002B5B),
//         title: Text("Animated Radial Menu"),
//         centerTitle: true,
//       ),
//       body: RadialMenu(
//         centerButtonAlignment: Alignment.bottomCenter,
//         children: [
//           RadialButton(
//             icon: Icon(Icons.browse_gallery),
//             buttonColor: Color(0xFFEA5455),
//             onPress: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => NextScreen(iconData: Icons.browse_gallery,)),
//             ),
//           ),
//           RadialButton(
//             icon: Icon(Icons.camera_alt),
//             buttonColor: Color(0xFFEA5455),
//             onPress: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => NextScreen(iconData: Icons.camera_alt,)),
//             ),
//           ),
//           RadialButton(
//             icon: Icon(Icons.person),
//             buttonColor: Color(0xFFEA5455),
//             onPress: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => NextScreen(iconData: Icons.person,)),
//             ),
//           ),
//           RadialButton(
//             icon: Icon(Icons.contact_page),
//             buttonColor: Color(0xFFEA5455),
//             onPress: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => NextScreen(iconData: Icons.contact_page,)),
//             ),
//           ),
//           RadialButton(
//             icon: Icon(Icons.shopping_cart),
//             buttonColor: Color(0xFFEA5455),
//             onPress: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => NextScreen(iconData: Icons.shopping_cart,)),
//             ),
//           ),
//           RadialButton(
//             icon: Icon(Icons.book_rounded),
//             buttonColor: Color(0xFFEA5455),
//             onPress: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => NextScreen(iconData: Icons.book_rounded,)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NextScreen extends StatelessWidget {
//   IconData iconData;
//   NextScreen({super.key, required this.iconData});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFE4DCCF),
//       appBar: AppBar(
//         title: Text('Next Screen'),
//         centerTitle: true,
//         backgroundColor: Color(0xFF002B5B),
//       ),
//       body: Center(
//         child: Icon(
//           iconData, size: 200,
//         ),
//       ),
//     );
//   }
// }