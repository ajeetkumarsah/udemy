import 'package:flutter/material.dart';
import 'package:udemy/utils/app_colors.dart';
import 'package:udemy/utils/png_files.dart';

class LiveSection extends StatelessWidget {
  const LiveSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) => Container(
              width: width * .6,
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color:
                    i == 0 ? const Color(0xffF7E2A5) : const Color(0xffFED1BA),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    i == 0 ? 'Live Sections on JEE Exams' : 'Free Courses',
                    style: const TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Live Sections on JEE Exams',
                              // maxLines: 1,
                              // overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: AppColors.black.withOpacity(.8),
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.black,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 8),
                                child: const Text(
                                  "Join",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        PngFiles.liveSection,
                        // height: 60,
                        width: 67,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
