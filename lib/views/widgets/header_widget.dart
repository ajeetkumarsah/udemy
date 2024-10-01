import 'package:flutter/material.dart';
import 'package:udemy/utils/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final bool isViewAll;

  const HeaderWidget({super.key, required this.title, this.isViewAll = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Avenir',
            ),
          ),
        ),
        if (isViewAll)
          const Flexible(
            child: Text(
              'View All',
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontFamily: 'Avenir',
              ),
            ),
          ),
      ],
    );
  }
}
