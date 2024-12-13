import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plants/constants.dart';
import 'package:plants/feature/collection/widget/collection_view_body.dart';
import 'package:plants/feature/collection/widget/custom_paint.dart';
import 'package:plants/feature/home/widget/custom_painter_home.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              // borderRadius: BorderRadius.circular(50), // لتشكيل الحواف
              child: Container(
                height: 30,
                color: kMyGreen, // لون الـ Bottom Nav Bar
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
            ),
          ),
          Positioned(
            right: 30,
            bottom: 0, // تعديل الموقع السفلي
            child: CustomPaint(
              size: const Size(300, 600), // حجم أصغر للرسم
              painter: BPSCustomPainter(),
            ),
          ),
          Positioned(
            top: 10, // تصغير المسافة العلوية
            right: 0,
            left: 0,
            child: IconButton(
              icon: const Icon(Icons.lock,
                  color: Colors.black, size: 20), // أيقونة أصغر
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: kMyGreen,
      appBar: AppBar(
        backgroundColor: kMyGreen,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back, // أيقونة الرجوع
            color: Colors.white, // تغيير اللون إلى الأبيض
          ),
          onPressed: () {
            Navigator.of(context).pop(); // العودة إلى الشاشة السابقة
          },
        ),
        title: const Text(
          'Decorative Flowers',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            FontAwesomeIcons.list,
            color: Colors.white, // تغيير لون أيقونة القائمة أيضًا إلى الأبيض
          ),
        ],
      ),
      body: const CollectionViewBody(),
    );
  }
}
