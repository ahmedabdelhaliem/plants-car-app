import 'package:flutter/material.dart';
import 'package:plants/core/assets/assets.dart';
import 'package:plants/feature/profile/widget/list_view_card.dart';
import 'package:plants/feature/profile/widget/slider_container.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(Assets.banana),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Exotic',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        'fruits',
                        style:
                            TextStyle(color: Color(0xff96c16d), fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffffffff),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                '10\nproduct',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'see more',
                        style:
                            TextStyle(color: Color(0xff96c16d), fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 40),

              // إضافة ListViewCard هنا
              const ListViewCard(),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Offers',
                    style: TextStyle(
                        color: Color.fromARGB(255, 242, 242, 242),
                        fontSize: 30),
                  ),
                  Text(
                    'see more',
                    style: TextStyle(color: Color(0xff96c16d), fontSize: 15),
                  ),
                ],
              ),
              const SliderContainer(),
            ],
          ),
          Positioned(
            right: 15,
            top: -8,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 20,
              child: Center(
                // لإجبار المحتوى على التمركز
                child: Image.asset(
                  Assets.bag,
                  fit: BoxFit.contain,
                  height: 20, // ضبط الحجم ليبقى في المنتصف
                  width: 20,
                  color: Colors.white, // ضبط الحجم ليبقى في المنتصف
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
