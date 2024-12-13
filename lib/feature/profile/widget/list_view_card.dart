import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plants/core/assets/assets.dart';
import 'package:plants/core/utils/app_router.dart';
import 'package:plants/feature/profile/widget/custom_carg.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // تعيين ارتفاع مناسب للقائمة
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              clipBehavior: Clip.none, // يسمح بخروج الصورة خارج حدود العنصر
              children: [
                Container(
                  height: 300,
                ),
                // العنصر الرئيسي (البطاقة)

                GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kDetailsView);
                    },
                    child: const CustomCard()),
                Positioned(
                  right: 10,
                  top: -60, // ضبط الموقع الأفقي للصورة
                  child: SizedBox(
                    height: 100, // حجم الصورة
                    width: 100,
                    child: Image.asset(
                      Assets.dragon,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
