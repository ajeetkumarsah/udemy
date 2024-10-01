import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:udemy/utils/app_colors.dart';
import 'package:udemy/utils/svg_files.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w800,
        color: AppColors.black,
        fontFamily: 'Avinir',
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w800,
        color: AppColors.textLight,
        fontFamily: 'Avinir',
      ),
      unselectedItemColor: Colors.grey,
      selectedItemColor: AppColors.primary,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.primary.withOpacity(.1),
              ),
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(SvgFiles.home)),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgFiles.teacher), label: 'Batches'),
        BottomNavigationBarItem(
            icon: Stack(
              children: [
                SvgPicture.asset(SvgFiles.message),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColors.primary,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    height: 14,
                    width: 14,
                    child: const Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: 'Chat'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgFiles.profile), label: 'Profile'),
      ],
    );
  }
}
