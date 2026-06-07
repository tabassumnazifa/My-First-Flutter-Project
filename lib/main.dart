import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  void MySearchbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 100,
        toolbarOpacity: 1,
        elevation: 100,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              MySearchbar(context, "I am comment");
            },
            icon: const Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              MySearchbar(context, "I am search");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MySearchbar(context, "I am email");
            },
            icon: const Icon(Icons.email),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.pink,
        child: const Icon(Icons.add),
        onPressed: () {
          MySearchbar(context, "I am action button");
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySearchbar(context, "I am home bottom menu");
          } else if (index == 1) {
            MySearchbar(context, "I am contact bottom menu");
          } else if (index == 2) {
            MySearchbar(context, "I am profile bottom menu");
          }
        },
      ),
    );
  }
}