import 'package:flutter/material.dart';
import 'package:plants/constants.dart';
import 'package:plants/feature/profile/widget/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SafeArea(
        child: Scaffold(
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
                    GestureDetector(
                      onTap: () {
                        // اضف التنقل هنا
                      },
                      child: const Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // اضف التنقل هنا
                      },
                      child: const Text(
                        'Favorites',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // اضف التنقل هنا
                      },
                      child: const Text(
                        'Premium',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: kMyGeay,
          body: const ProfileViewBody(),
        ),
      ),
      Positioned(
        right: 60,
        bottom: 55,
        child: CircleAvatar(
          backgroundColor: const Color(0xff666666),
          radius: 20,
          child: IconButton(
            onPressed: () {
              // اضف التنقل هنا
            },
            icon: const Icon(Icons.home, color: Colors.white),
          ),
        ),
      ),
      Positioned(
        left: 150,
        bottom: 55,
        child: CircleAvatar(
          backgroundColor: const Color(0xff666666),
          radius: 20,
          child: IconButton(
            onPressed: () {
              // اضف التنقل هنا
            },
            icon: const Icon(Icons.favorite, color: Colors.white),
          ),
        ),
      ),
      Positioned(
        left: 44,
        bottom: 55,
        child: CircleAvatar(
          backgroundColor: const Color(0xff666666),
          radius: 20,
          child: IconButton(
            onPressed: () {
              // اضف التنقل هنا
            },
            icon: const Icon(Icons.person, color: Colors.white),
          ),
        ),
      ),
    ]);
  }
}
