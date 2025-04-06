import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran3/core/constant/appfonts.dart';
import 'package:quran3/core/constant/approutes.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade100, 
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              ' مرحبا بك في تطبيق الورد اليومي لحفظ القران الكريم',
              textAlign: TextAlign.center,
              style: Appfonts.fonttagwal.copyWith(
                color: Colors.black, // النص باللون الأسود ليظهر بوضوح
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            _buildButton(
              text: 'السور',
              icon: Icons.book, // أيقونة السور
              onPressed: () => Get.toNamed(Approutes.homeview),
            ),
            const SizedBox(height: 20),
            _buildButton(
              text: 'المفضلة',
              icon: Icons.favorite, // أيقونة المفضلة
              onPressed: () => Get.toNamed(Approutes.favorite),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade500, 
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: Appfonts.fonttagwal.copyWith(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
