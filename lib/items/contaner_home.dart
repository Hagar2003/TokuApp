import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class colomsHome extends StatelessWidget {
  colomsHome(
      {super.key,
      required this.name,
      required this.onTap,
      required this.color});
  String? name;
  Function()? onTap;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        // color: const Color(0xFFD0E8F2),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    name!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2E362F),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
