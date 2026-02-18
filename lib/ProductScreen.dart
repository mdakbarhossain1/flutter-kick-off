import 'package:flutter/material.dart';

class Productscreen extends StatelessWidget {
  const Productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Screen')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Product Screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go Back'),
              ),
              const OurCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class OurCard extends StatelessWidget {
  const OurCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OurCardWidget(title: 'Our Product A', iconData: Icons.shopping_cart),
        OurCardWidget(
          title: 'Our Product B',
          iconData: Icons.local_mall,
          extraWidget: ElevatedButton(onPressed: () {}, child: Text('Buy Now')),
        ),
      ],
    );
  }
}

class OurCardWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Widget extraWidget;
  const OurCardWidget({
    super.key,
    required this.title,
    required this.iconData,
    this.extraWidget = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: InkWell(
        onTap: () {},
        child: Card(
          color: Colors.amberAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(iconData, size: 40, color: Colors.black),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.star, size: 20, color: Colors.orangeAccent),
              extraWidget,
            ],
          ),
        ),
      ),
    );
  }
}
