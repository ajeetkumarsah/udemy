import 'package:flutter/material.dart';
import 'package:udemy/utils/app_colors.dart';
import 'package:udemy/utils/png_files.dart';
import 'package:udemy/views/widgets/all_courses.dart';
import 'package:udemy/views/widgets/bottom_nav_bar.dart';
import 'package:udemy/views/widgets/header_widget.dart';
import 'package:udemy/views/widgets/live_section.dart';
import 'package:udemy/views/widgets/options_section.dart';
import 'package:udemy/views/widgets/popular_courses.dart';
import 'package:udemy/views/widgets/toppers_section.dart';

class EnrollScreen extends StatelessWidget {
  const EnrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(PngFiles.user),
            ),
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hi, ',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "AvenirLTPro",
                      ),
                    ),
                    TextSpan(
                      text: 'Krishna',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontFamily: "AvenirLTPro",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Better yourself each day everyday',
                style: TextStyle(
                  fontFamily: "AvenirLTPro",
                  color: Colors.black,
                  fontSize: 12,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Stack(
                children: [
                  Image.asset(
                    PngFiles.notification,
                    height: 24,
                    width: 24,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red,
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      height: 14,
                      width: 14,
                      // padding: const EdgeInsets.all(2),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
          // bottom: PreferredSize(
          //   preferredSize: const Size.fromHeight(kToolbarHeight),
          //   child:
          // ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  child: TabBar(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.black),
                    unselectedLabelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Avenir',
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Avenir',
                    ),
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(text: 'Online'),
                      Tab(text: 'Offline'),
                    ],
                  ),
                ),
                const LiveSection(),
                const SizedBox(height: 20),
                const OptionsSection(),
                const SizedBox(height: 20),
                const HeaderWidget(title: 'Toppers of ABC', isViewAll: false),
                const ToppersSection(),
                const HeaderWidget(title: 'Popular Courses'),
                const PopularCourses(),
                const HeaderWidget(title: 'All Courses'),
                const AllCourses(),
                const SizedBox(height: 20),
                Image.asset(PngFiles.banner),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
