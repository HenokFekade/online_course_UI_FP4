import 'package:course_app/components/courses_widget.dart';
import 'package:course_app/constants.dart';
import 'package:course_app/model/course.dart';
import 'package:course_app/model/fake_data.dart';
import 'package:course_app/screens/delatil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    List<Course> courses = FakeData.getCourse();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute(
                              builder: (context) => DetailPage())),
                      child: SvgPicture.asset('assets/icons/menu.svg')),
                  Image.asset('assets/images/user.png'),
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                'Hey Alex,',
                style: kHeadingextStyle,
              ),
              Text(
                'Find a course you want to learn',
                style: kSubheadingextStyle,
              ),
              SizedBox(height: 30.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.black.withOpacity(0.07),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/search.svg'),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: TextField(
                        cursorColor: kTextColor,
                        cursorWidth: 2.5,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for anything',
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories', style: kTitleTextStyle),
                  Text(
                    'See All',
                    style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Expanded(
                child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: courses.length,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 20.0,
                    itemBuilder: (context, index) => CoursesWidget(
                          course: courses[index],
                          height: index.isEven ? 200 : 240,
                        ),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
