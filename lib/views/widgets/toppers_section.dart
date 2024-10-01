import 'package:flutter/material.dart';

class ToppersSection extends StatelessWidget {
  const ToppersSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 160,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'NEET Toppers of Rajbir Institute',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Avenir',
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              'https://media.istockphoto.com/id/1369136607/photo/positive-millennial-black-man-student-with-books-on-yellow.jpg?s=612x612&w=0&k=20&c=KkmEBqprvv39OzUniJwu401Y59ZZ-k1Crt-Fowxn2CI=',
                              height: 56,
                              width: 56,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Shree',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Center(
                              child: Text(
                                '720/720',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff029C42),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ],
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
