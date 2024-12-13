import 'package:flutter/material.dart';
import 'package:plants/core/assets/assets.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(70),
            ),
            color: Color(0xff666666),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // صورة المنتج مع عرض مضبوط
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  Assets.watermelon,
                  height: 80,
                  width: 80, // عرض مناسب للصورة
                  fit: BoxFit.cover, // التحكم بكيفية عرض الصورة
                ),
              ),
              const SizedBox(width: 10), // مسافة بين الصورة والنصوص
              // النصوص داخل Expanded لضمان توزيع ديناميكي للمساحة
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start, // محاذاة لليسار
                  children: [
                    Text(
                      'Pitaye',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'PREMIUM',
                      style: TextStyle(color: Color(0xff96c16d), fontSize: 12),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start, // محاذاة لليسار
                  children: [
                    Text(
                      '€11.5',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      '€4.5',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // وضع الزر دائري باستخدام Positioned
        Positioned(
          right: 10,
          bottom: 10,
          child: CircleAvatar(
            radius: 18,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
