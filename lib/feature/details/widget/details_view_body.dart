import 'package:flutter/material.dart';
import 'package:plants/core/assets/assets.dart';
import 'package:plants/feature/details/widget/CustomRowDetails.dart';
import 'package:plants/feature/details/widget/cart_down.dart';
import 'package:plants/feature/details/widget/custom_botton_details.dart';
import 'package:plants/feature/details/widget/shap1.dart';
import 'package:plants/feature/details/widget/shap2.dart';
import 'package:plants/feature/details/widget/shap3.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key});

  @override
  State<DetailsViewBody> createState() => _DetailsViewBodyState();
}

class _DetailsViewBodyState extends State<DetailsViewBody> {
  // لتحديد الشكل الحالي
  Widget? currentShape;
  // لتحديد الزر النشط
  String activeButton = '1';

  @override
  void initState() {
    super.initState();
    // الشكل الافتراضي
    currentShape = const Shap1();
  }

  void setActiveButton(String buttonText, Widget shape) {
    setState(() {
      activeButton = buttonText; // تعيين الزر النشط
      currentShape = shape; // تعيين الشكل الحالي
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // الصورة كخلفية
        Positioned.fill(
          right: -150,
          top: 50,
          child: Image.asset(
            Assets.dragonBack,
            fit: BoxFit.cover, // تغطية المساحة بالكامل
            alignment: Alignment.center, // إبقاء الصورة في المنتصف
          ),
        ),
        // المحتوى فوق الخلفية
        Positioned(
          top: 16,
          left: 16,
          child: CircleAvatar(
            backgroundColor: Colors.white,
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

        // المحتوى الأساسي
        const CustomRowDetails(),
        Positioned(
          right: 35,
          top: -5,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 20,
            child: Center(
              child: Image.asset(
                Assets.bag,
                fit: BoxFit.contain,
                height: 20,
                width: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const CartDown(),
        Positioned(
          bottom: -50,
          left: -50,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 180,
              width: 180,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
            ),
          ),
        ),
        Positioned(
          bottom: -50,
          left: -49,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 230,
              width: 240,
              decoration: BoxDecoration(
                color: Colors.transparent, // الخلفية شفافة
                shape: BoxShape.circle, // الشكل دائري
                border: Border.all(
                  color: Colors.grey, // لون الحواف رمادي
                  width: 2, // سمك الحواف
                ),
              ),
            ),
          ),
        ),

        // عرض الشكل الحالي
        if (currentShape != null) currentShape!,

        // الأزرار لتبديل الأشكال
        Positioned(
          bottom: 152,
          left: 60,
          child: CustomBottonDetails(
            text: '1',
            isActive: activeButton == '1',
            onPressed: () => setActiveButton('1', const Shap3()),
          ),
        ),
        Positioned(
          bottom: 100,
          left: 134,
          child: CustomBottonDetails(
            text: '5',
            isActive: activeButton == '5',
            onPressed: () => setActiveButton('5', const Shap1()),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 160,
          child: CustomBottonDetails(
            text: '11',
            isActive: activeButton == '11',
            onPressed: () => setActiveButton('11', const Shap2()),
          ),
        ),
      ],
    );
  }
}
