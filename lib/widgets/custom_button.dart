import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learn_with_noman/android_app/const/all_colors.dart';

class Custombuttom extends StatelessWidget {
  final String btmText;
  final VoidCallback onTab;

  const Custombuttom({
    super.key,
    required this.btmText,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: AppColors.buttomBG,
          
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btmText,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

// GoogleAuthButtom
class GoogleAuthButtom extends StatelessWidget {
  final String btmText;
  final String imagePath;

  const GoogleAuthButtom({
    super.key,
    required this.btmText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imagePath, height: 20, width: 20),
            const SizedBox(width: 10),
            Text(
              btmText,
              style: const TextStyle(
                  color: Color.fromARGB(255, 143, 117, 117),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
