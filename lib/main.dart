import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Devs')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Hello World',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blueAccent.shade100,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                height: 100,
                width: double.infinity,
                child: const Text(
                  "i m container text",
                  textAlign: TextAlign.center,
                ),
              ),
              Icon(
                Icons.flutter_dash,
                size: 48,
                color: Colors.blueAccent.shade400,
              ),
              Icon(
                Icons.accessibility_new,
                size: 48,
                color: Colors.blueAccent.shade400,
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Image(
                  image: NetworkImage(
                    'https://scontent.fdac22-2.fna.fbcdn.net/v/t39.30808-6/555905976_1124717409863692_6989010785413107170_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeE_SlgL49M0vTVLn44XftqNRVOEV3RKnwFFU4RXdEqfAdhegj21tNNsTccUjZ6Z3Tp95B2sDmMwbdMp92Jpa9tv&_nc_ohc=AgQ25GRiv6AQ7kNvwGmLj8i&_nc_oc=Adk-g3eEnH8RgQauUnz4tXpZA-Bs5_1t4EHY8zqXHYYI2VEGMP96fZgSDG-4xGC7PYE&_nc_zt=23&_nc_ht=scontent.fdac22-2.fna&_nc_gid=rwAIoWKzNzfFEWCPYGU2bw&oh=00_AfswnBr4ephVar8gYPjSlk4wUF7LVcXkAVf6rjKPt1MISg&oe=6998AA79',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  'assets/akbarshuvo pp.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/akbarshuvo pp.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
