import 'package:course_app/constants.dart';
import 'package:course_app/model/lesson.dart';
import 'package:flutter/material.dart';

class CoureseListTile extends StatelessWidget {
  final Lesson lesson;
  const CoureseListTile({required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: ListTile(
        leading: Text(
          lesson.number,
          style: kHeadingextStyle.copyWith(
            color: kTextColor.withOpacity(0.4),
          ),
        ),
        title: Text(
          '${lesson.minute} mins',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kTextColor.withOpacity(0.5),
          ),
        ),
        subtitle: Text(
          lesson.title,
          style: TextStyle(
            color: kTextColor,
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Container(
          height: 45.0,
          width: 45.0,
          decoration: BoxDecoration(
            color: lesson.isActive ? kGreenColor : kGreenColor.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
