import 'package:flutter/material.dart';
import 'package:udemy/utils/app_colors.dart';
import 'package:udemy/utils/png_files.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 380,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemCount: 3,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          return Container(
            margin: const EdgeInsets.only(right: 12),
            width: width * .8,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 6,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Flexible(
                      child: Text(
                        'Mr. Sampath',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Avenir',
                        ),
                      ),
                    ),
                    Image.asset(
                      PngFiles.verified,
                      height: 16,
                      width: 16,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: ShaderMask(
                          shaderCallback: (bounds) {
                            return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xff00000000),
                                const Color(0xff00000000),
                                const Color(0xff00000000).withOpacity(.67),
                              ],
                            ).createShader(bounds);
                          },
                          blendMode: BlendMode.srcATop,
                          child: Image.network(
                            'https://www.shutterstock.com/image-photo/happy-african-american-student-raising-600nw-1937721487.jpg',
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4),
                          child: const Text(
                            'Hinglish',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: Text(
                          '• Live'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Avinir',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'ARAMBH - NEET DROPPER BATCH',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Avinir',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Image.asset(
                                PngFiles.syllabus,
                                height: 14,
                                width: 14,
                              ),
                            ),
                            const TextSpan(
                              text: ' Full Syllabus',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textLight,
                                fontFamily: 'Avinir',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Image.asset(
                                PngFiles.student,
                                height: 14,
                                width: 14,
                              ),
                            ),
                            const TextSpan(
                              text: ' For NEET 2025 & 2026 Aspirant',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textLight,
                                fontFamily: 'Avinir',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Image.asset(
                                PngFiles.live,
                                height: 14,
                                width: 14,
                              ),
                            ),
                            const TextSpan(
                              text: ' Live + Recorded',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textLight,
                                fontFamily: 'Avinir',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Image.asset(
                                PngFiles.batch,
                                height: 14,
                                width: 14,
                              ),
                            ),
                            const TextSpan(
                              text: ' Batch starts on 16th Aug',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textLight,
                                fontFamily: 'Avinir',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '₹ ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'AvenirLTPro',
                            ),
                          ),
                          TextSpan(
                            text: '5000 ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'AvenirLTPro',
                            ),
                          ),

                          TextSpan(
                            text: '₹ 10000 ',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              fontFamily: 'AvenirLTPro',
                            ),
                          ),
                          // Discount percentage in red
                          TextSpan(
                            text: '50% OFF',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.red,
                              fontFamily: 'AvenirLTPro',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryLight,
                  ),
                  margin: const EdgeInsets.only(top: 12),
                  child: const Center(
                    child: Text(
                      'Join',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "AvenirLTPro",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
