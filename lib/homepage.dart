import 'package:flutter/material.dart';
import 'package:tawsee77/container_page.dart';
import 'package:tawsee77/image_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        backgroundColor: const Color.fromARGB(255, 228, 136, 170),
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 136, 170),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 243, 195, 213),
              title: Text("Homepage"),
              onTap: () {},
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.settings),
              hoverColor: const Color.fromARGB(255, 243, 195, 213),
              title: Text("Settings"),
              onTap: () {},
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.search),
              hoverColor: const Color.fromARGB(255, 243, 195, 213),
              title: Text("Search"),
              onTap: () {},
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.bookmark),
              hoverColor: const Color.fromARGB(255, 243, 195, 213),
              title: Text("Saved"),
              onTap: () {},
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.privacy_tip),
              hoverColor: const Color.fromARGB(255, 243, 195, 213),
              title: Text("Privacy & Security"),
              onTap: () {},
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.help_outline),
              hoverColor: const Color.fromARGB(255, 243, 195, 213),
              title: Text("Help Center"),
              onTap: () {},
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.check_box_outline_blank),
              hoverColor: const Color.fromARGB(255, 243, 195, 213),
              title: Text("Container Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContainerPage(),
                  ),
                );
              },
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.image),
              hoverColor: const Color.fromARGB(255, 243, 195, 213),
              title: Text("Image Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImagePage(),
                  ),
                );
              },
            ),

            Spacer(),

            ListTile(
              leading: Icon(Icons.logout),
              hoverColor: const Color.fromARGB(255, 249, 178, 229),
              title: Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Create button clicked!")),
          );
        },
        backgroundColor: const Color.fromARGB(255, 228, 136, 170),
        foregroundColor: Colors.white,
        hoverColor: const Color.fromARGB(255, 243, 195, 213),
        tooltip: "Create",
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),

      // Body
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 255, 247, 250),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 150, 83, 117),
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Choose a page to get started",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),

              SizedBox(height: 40),

              // Buttons
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [

                  // Container Page Button
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContainerPage(),
                        ),
                      );
                    },
                    icon: Icon(Icons.dashboard),
                    label: Text("Container Page"),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 139, 123, 200),
                      foregroundColor: Colors.white,
                      elevation: 8,
                      fixedSize: Size(190, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  // Image Page Button
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImagePage(),
                        ),
                      );
                    },
                    icon: Icon(Icons.image),
                    label: Text("Image Page"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 67, 169, 154),
                      foregroundColor: Colors.white,
                      elevation: 8,
                      fixedSize: Size(190, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  // Explore Button
                  OutlinedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Welcome to the Explore section!"),
                          backgroundColor: const Color.fromARGB(255, 213, 112, 120),
                        ),
                      );
                    },
                    icon: Icon(Icons.explore),
                    label: Text("Explore"),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 225, 139, 111),
                      foregroundColor: Colors.white,
                      side: BorderSide(
                        color: const Color.fromARGB(255, 225, 139, 111),
                      ),
                      fixedSize: Size(190, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}