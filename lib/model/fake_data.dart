import 'package:course_app/model/course.dart';
import 'package:course_app/model/lesson.dart';

class FakeData {
  static List<Course> getCourse() {
    List<Course> courses = [];
    courses.add(Course(
      image: 'assets/images/marketing.png',
      lessons: 17,
      name: 'Marketing',
    ));
    courses.add(Course(
      image: 'assets/images/ux_big.png',
      lessons: 25,
      name: 'UI Design',
    ));
    courses.add(Course(
      image: 'assets/images/photography.png',
      lessons: 13,
      name: 'Photography',
    ));
    courses.add(Course(
      image: 'assets/images/business.png',
      lessons: 20,
      name: 'Business',
    ));
    return courses;
  }

  static List<Lesson> getLesson() {
    List<Lesson> lessons = [];
    lessons.add(Lesson(
        isActive: true,
        minute: '5:35',
        title: 'Welcome to the Course',
        number: '01'));

    lessons.add(Lesson(
        isActive: true,
        minute: '19:04',
        title: 'Design Thinking - Intro',
        number: '02'));

    lessons.add(Lesson(
        isActive: false,
        minute: '12:48',
        title: 'Design Thinking Process',
        number: '03'));

    lessons.add(Lesson(
        isActive: false,
        minute: '37:54',
        title: 'Customer Perspective',
        number: '04'));

    return lessons;
  }
}
