import 'package:course_app/constants.dart';
import 'package:course_app/model/course.dart';
import 'package:flutter/material.dart';

class CoursesWidget extends StatelessWidget {
  final Course course;
  final double height;

  const CoursesWidget({required this.course, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(left: 5.0, right: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(course.image))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text(
              course.name,
              style: kSubtitleTextSyule.copyWith(fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 7.0),
            Text(
              '${course.lessons} Courses',
              style: TextStyle(
                color: kTextColor.withOpacity(0.6),
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
