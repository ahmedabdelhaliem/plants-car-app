import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], // لون الخلفية
      body: const Center(
        child: Text(
          'Content Here',
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50), // لتشكيل الحواف
          child: Container(
            height: 60,
            color: Colors.black, // لون الـ Bottom Nav Bar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    // اضف التنقل هنا
                  },
                  icon: const Icon(Icons.home, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    // اضف التنقل هنا
                  },
                  icon: const Icon(Icons.favorite, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    // اضف التنقل هنا
                  },
                  icon: const Icon(Icons.shopping_cart, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    // اضف التنقل هنا
                  },
                  icon: const Icon(Icons.person, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
