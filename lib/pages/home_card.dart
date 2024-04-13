import 'package:flutter/material.dart';

class DynamicCard extends StatelessWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
   final double width;

  const DynamicCard({
    Key? key,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle1,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  subtitle2,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


