// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wash_out/pages/home_card.dart';
import 'package:wash_out/pages/laundry_card.dart';
import 'package:wash_out/pages/order_details.dart';
import 'package:wash_out/pages/order_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications action
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DynamicCard(title: "Welcome", subtitle1: "John Doe", subtitle2: "Laundry is the real Neverending Story.",width: 400,)
                // Text(
                //   'Welcome,',
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // SizedBox(height: 5),
                // Text(
                //   'John Doe',
                //   style: TextStyle(
                //     fontSize: 18,
                //   ),
                // ),
                // SizedBox(height: 10),
                // Text(
                //   'Here you can find nearby laundry services and categories to choose from.',
                //   style: TextStyle(
                //     fontSize: 16,
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: CategoryItem(
                  icon: Icons.local_laundry_service,
                  label: 'Dry Clean',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderDetails(text: "Dry clean")),
                  );
                },
              ),
              GestureDetector(
                child: CategoryItem(
                  icon: Icons.local_laundry_service,
                  label: 'Laundry',
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderDetails(text: "Laundry")),
                  );
                },
              ),
              GestureDetector(
                child: CategoryItem(
                  icon: Icons.iron,
                  label: 'Iron',
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderDetails(text: "Iron")),
                  );
                },
              ),
              GestureDetector(
                child: CategoryItem(
                  icon: Icons.folder,
                  label: 'Dart Remove',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderDetails(text: "Dart Remove")),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Laundry Nearby',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LaundryShopCard(
                    name: "Meghna Laundry Shop",
                    imageUrl:
                        'https://img.freepik.com/premium-photo/laundry-shop-interior-with-seat-washing-machines_258219-267.jpg',
                    rating: 4.5,
                  ),
                  SizedBox(height: 20),
                  LaundryShopCard(
                    name: "Clutchy",
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxLm4frhiUnraGaKr2Ip_F0xFRfk6cayeCvnuWQ_ft0g&s',
                    rating: 3.8,
                  ),
                  SizedBox(height: 20),
                  // Add more LaundryShopCard widgets as needed
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        currentIndex: 0,
        onTap: (int index) {
          switch (index) {
            case 0:
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
              break;
            case 2:
              // Navigate to the profile page
              break;
          }
        },
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
