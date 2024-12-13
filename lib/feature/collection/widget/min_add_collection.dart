import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plants/constants.dart';

class MinAddCollection extends StatefulWidget {
  const MinAddCollection({super.key});

  @override
  _MinAddCollectionState createState() => _MinAddCollectionState();
}

class _MinAddCollectionState extends State<MinAddCollection> {
  int _counter = 1; // القيمة المبدئية للعدد

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .25, // تصغير العرض
      height: 40, // تكبير ارتفاع الصف لتناسق أفضل
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // توزيع متساوي
        children: [
          Expanded(
            child: IconButton(
              onPressed: () {
                setState(() {
                  if (_counter > 0) _counter--; // تقليل الرقم
                });
              },
              icon: const Icon(
                FontAwesomeIcons.minus,
                size: 15,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: kMyGreen,
            radius: 15, // تصغير الحجم
            child: Text(
              '$_counter',
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () {
                setState(() {
                  _counter++; // زيادة الرقم
                });
              },
              icon: const Icon(
                Icons.add,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
