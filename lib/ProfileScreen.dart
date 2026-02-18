import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // 1. Polished AppBar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        actions: [
          // TRIGGER: Using Builder to get the correct context for the Scaffold
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.settings_outlined),
              onPressed: () {
                Scaffold.of(context).openEndDrawer(); // Opens the Right Drawer
              },
            ),
          ),
        ],
      ),
      // 2. Main Navigation Drawer (Left)
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('AS', style: TextStyle(fontSize: 24)),
              ),
              accountName: Text('Akbar Hossain Shuvo'),
              accountEmail: Text('akbar.shuvo@example.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),

      // 3. NEW: Settings Drawer (Right)
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text('Dark Mode'),
                trailing: Switch(value: false, onChanged: (val) {}),
              ),
              ListTile(
                leading: const Icon(Icons.notifications_active),
                title: const Text('Notifications'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text('Privacy & Security'),
                onTap: () {},
              ),
              const Spacer(), // Pushes the version to the bottom
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Version 1.0.1',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        // Added scroll just in case of small screens
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              // Profile Image with a shadow ring
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage('assets/akbarshuvo_pp.png'),
                      ),
                    ),
                    // Active Status Indicator
                    const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Akbar Hossain Shuvo',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
              ),

              const Text(
                'Flutter Developer & Designer',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),

              const SizedBox(height: 20),

              // Bio in a slightly nicer container
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Building seamless digital experiences with Dart & Flutter. Dedicated to clean code and beautiful UI.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
              ),

              const SizedBox(height: 30),

              // Action Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildActionButton('Follow', Colors.blueAccent, Colors.white),
                  const SizedBox(width: 15),
                  _buildActionButton(
                    'Message',
                    Colors.white,
                    Colors.blueAccent,
                    isOutlined: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to keep the code clean
  Widget _buildActionButton(
    String label,
    Color bg,
    Color text, {
    bool isOutlined = false,
  }) {
    return Container(
      width: 130,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bg,
          foregroundColor: text,
          elevation: isOutlined ? 0 : 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: isOutlined
                ? const BorderSide(color: Colors.blueAccent)
                : BorderSide.none,
          ),
        ),
        onPressed: () {},
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
