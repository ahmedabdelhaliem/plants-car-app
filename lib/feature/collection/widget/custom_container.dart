import 'package:flutter/material.dart';
import 'package:plants/constants.dart';
import 'package:plants/core/assets/assets.dart';
import 'package:plants/feature/collection/widget/custom_paint.dart';
import 'package:plants/feature/collection/widget/min_add_collection.dart';
import 'package:plants/feature/collection/widget/rating_widget.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      // padding: const EdgeInsets.all(10), // تصغير الحشوة الداخلية
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), // تصغير الحواف
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8, // تقليل تأثير الظل
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
              right: 0,
              bottom: -180, // تعديل الموقع السفلي
              child: CustomPaint(
                size: Size(screenWidth * 0.6, 400), // حجم أصغر للرسم
                painter: HPSCustomPainter(),
              )),
          Positioned(
            top: 35, // تصغير المسافة العلوية
            right: 0,
            child: IconButton(
              icon: const Icon(Icons.lock,
                  color: Colors.black, size: 14), // أيقونة أصغر
              onPressed: () {},
            ),
          ),
          Row(
            children: [
              // الصورة
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10), // تصغير الحشوة
                child: Image.asset(
                  Assets.tree,
                  height: 50, // تقليل ارتفاع الصورة
                ),
              ),
              // النصوص والعناصر الأخرى
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingWidget(),
                    // SizedBox(height: 6), // تقليل المسافة بين العناصر
                    Text(
                      'Banana Tree',
                      style: TextStyle(
                        fontSize: 16, // حجم خط أصغر
                        fontWeight: FontWeight.bold,
                      ),
                    ), // SizedBox(height: 4),

                    Text(
                      '\$100',
                      style: TextStyle(
                        fontSize: 20, // تقليل حجم السعر
                        color: kMyGreen,
                      ),
                    ),
                    // SizedBox(height: 4),
                    MinAddCollection(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
