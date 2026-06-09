import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  // SnackBar Function
  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text(
          "Inventory App",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),

        actions: [

          IconButton(
            icon: const Icon(Icons.search),

            onPressed: () {
              showMessage(context, "Search Clicked");
            },
          ),

          IconButton(
            icon: const Icon(Icons.notifications_none),

            onPressed: () {
              showMessage(context, "Notification Clicked");
            },
          ),
        ],
      ),

      // Left Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),

              accountName: const Text("Nazifa Tabassum"),
              accountEmail: const Text("tnazifa003@gmail.com"),

              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,

                child: Icon(
                  Icons.person,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),

              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),

              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),

              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Right Drawer
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [

                  Icon(
                    Icons.dashboard,
                    color: Colors.white,
                    size: 45,
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Quick Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.favorite_border),
              title: const Text("Favorites"),

              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),

              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Minimal Body
      body: Column(
        children: [

          const Spacer(),

          const Icon(
            Icons.inventory_2_outlined,
            size: 90,
            color: Colors.blue,
          ),

          const SizedBox(height: 20),

          const Text(
            "Inventory Dashboard",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Manage your products easily",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),

          const Spacer(),

          // Bottom Body Content
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),

            decoration: const BoxDecoration(
              color: Color(0xfff5f5f5),

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),

            child: Column(
              children: const [

                Text(
                  "Today's Overview",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "120 Products • 08 Orders • 15 Customers",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // Floating Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,

        child: const Icon(Icons.add),

        onPressed: () {
          showMessage(context, "Add Button Clicked");
        },
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2),
            label: "Products",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],

        onTap: (index) {

          if (index == 0) {
            showMessage(context, "Home");
          }

          else if (index == 1) {
            showMessage(context, "Products");
          }

          else if (index == 2) {
            showMessage(context, "Profile");
          }
        },
      ),
    );
  }
}