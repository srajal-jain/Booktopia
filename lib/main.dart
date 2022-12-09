import 'package:booktopia/cart_page.dart';
import 'package:booktopia/home_page.dart';
import 'package:booktopia/library_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:booktopia/user_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'James Abbott ';
    final email = 'james@gmail.com';
    final urlImage =
        'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80';

    Widget buildHeader({
      required String urlImage,
      required String name,
      required String email,
      required VoidCallback onClicked,
    }) =>
        InkWell(
          onTap: onClicked,
          child: Container(
            padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 30, backgroundImage: NetworkImage(urlImage)),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    const SizedBox(height: 4),
                    Text(email,
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
        );

    return Drawer(
      child: Material(
        color: Colors.grey[800],
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: 'James Abbott',
                  urlImage: urlImage,
                ),
              )),
            ),
            buildMenuItem(
              text: 'Sync',
              icon: Icons.sync,
            ),
            buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications_outlined,
            ),
            // const SizedBox(
            //   height: 16,
            // ),
            buildMenuItem(
              text: 'Favourites',
              icon: Icons.favorite_border,
            ),
            // const SizedBox(
            //   height: 16,
            // ),
            buildMenuItem(
              text: 'Reading Insights',
              icon: Icons.book_outlined,
            ),
            const SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.white70,
              height: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings_outlined,
            ),
            // const SizedBox(
            //   height: 16,
            // ),
            buildMenuItem(
              text: 'About',
              icon: Icons.info_outline,
            ),
            // const SizedBox(
            //   height: 16,
            // ),
            buildMenuItem(
              text: 'Sign Out',
              icon: Icons.logout_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      onTap: () {},
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booktopia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Booktopia'),
    );
  }
}

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final screens = [
    HomePage(),
    LibraryPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xFFf1f5fb),
          //labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: index,
          animationDuration: Duration(seconds: 3),
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.book_outlined),
              selectedIcon: Icon(Icons.book),
              label: 'Library',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedIcon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}

// backgroundColor: Colors.teal,
// title: Center(child: Text(widget.title)),
// centerTitle: true,
