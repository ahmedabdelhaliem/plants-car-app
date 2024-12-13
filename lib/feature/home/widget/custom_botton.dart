import 'package:flutter/material.dart';
import 'package:plants/constants.dart';

class CustomButtonGroup extends StatefulWidget {
  const CustomButtonGroup({super.key, required this.buttons});
  final List<String> buttons;

  @override
  _CustomButtonGroupState createState() => _CustomButtonGroupState();
}

class _CustomButtonGroupState extends State<CustomButtonGroup> {
  int _selectedIndex = -1; // لإبقاء زر واحد مفعّل في كل مرة

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // توسيط العناصر عموديًا
      children: widget.buttons
          .asMap()
          .entries
          .map(
            (entry) => GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = entry.key; // تغيير الزر المفعّل
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 8.0), // مسافة بين الأزرار
                child: Material(
                  color: Colors.transparent,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: _selectedIndex == entry.key
                        ? kMyGreen // اللون الأخضر للزر المفعّل
                        : kMyGreen
                            .withOpacity(0.3), // اللون الشفاف للزر غير المفعّل
                    child: Text(
                      entry.value,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
