import 'package:flutter/material.dart';
import 'package:udemy/models/options_model.dart';
import 'package:udemy/utils/png_files.dart';

class OptionsSection extends StatelessWidget {
  const OptionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<OptionsModel> options = [
      OptionsModel(title: 'Free Courses', icon: PngFiles.freeCourse),
      OptionsModel(title: 'Attendance', icon: PngFiles.attemdance),
      OptionsModel(title: 'Store', icon: PngFiles.store),
      OptionsModel(title: 'Assessment', icon: PngFiles.assesment),
    ];
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: options.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          var item = options[i];
          return Container(
            margin: const EdgeInsets.only(right: 12),
            height: 90,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  color: Colors.grey.withOpacity(.1),
                  blurRadius: 6,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    item.icon,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      item.title,
                      style: const TextStyle(
                        // color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Avenir',
                        fontSize: 10,
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
