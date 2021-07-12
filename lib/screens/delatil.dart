import 'package:course_app/components/course_list_tile.dart';
import 'package:course_app/components/my_custom_cliper.dart';
import 'package:course_app/constants.dart';
import 'package:course_app/model/fake_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/ux_big.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: SvgPicture.asset('assets/icons/arrow-left.svg')),
                    SvgPicture.asset('assets/icons/more-vertical.svg'),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: ClipPath(
                  clipper: MyCustomCliper(),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 7.0, right: 20.0, top: 5.0, bottom: 5.0),
                    decoration: BoxDecoration(
                      color: kBestSellerColor,
                    ),
                    child: Text(
                      'BEST SELLER',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  'Design Thinking',
                  style: kHeadingextStyle,
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/person.svg'),
                    SizedBox(width: 5.0),
                    Text('18k'),
                    SizedBox(width: 20.0),
                    SvgPicture.asset('assets/icons/star.svg'),
                    SizedBox(width: 5.0),
                    Text('4.8'),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Text(
                      '\$50',
                      style: kHeadingextStyle,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      '\$70',
                      style: kSubtitleTextSyule.copyWith(
                        color: kTextColor.withOpacity(0.6),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70.0),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0))),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 45.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            'Course Content',
                            style: kTitleTextStyle,
                          ),
                        ),
                        ...FakeData.getLesson()
                            .map((lesson) => CoureseListTile(lesson: lesson))
                            .toList(),
                        SizedBox(height: 20.0),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: kTextColor.withOpacity(0.2),
                                  blurRadius: 50.0,
                                  offset: Offset(0, 4),
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0))),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25.0, vertical: 15.0),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFDCDD),
                                    borderRadius: BorderRadius.circular(40.0)),
                                child: SvgPicture.asset(
                                    'assets/icons/shopping-bag.svg'),
                              ),
                              SizedBox(width: 20.0),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => print('buy button pressed!'),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 20.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40.0),
                                      color: kBlueColor,
                                    ),
                                    child: Text(
                                      'Buy Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
