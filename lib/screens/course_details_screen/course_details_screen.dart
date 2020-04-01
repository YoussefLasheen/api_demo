import 'package:api_demo/services/api.dart';
import 'package:flutter/material.dart';

import 'package:api_demo/models/course.dart';

import 'components/long_desc_section/long_desc_section.dart';
import 'components/pricing_section/pricing_section.dart';
import 'components/reservation_button.dart';
import 'components/author_section/author_section.dart';
import 'components/desc_section/desc_section.dart';
import 'components/sliding_appbar/sliding_appbar.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FutureBuilder<Course>(
        future: fetchCourse(),
        initialData: Course(),
        builder: (context, snapshot) {
          return Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: SlidingAppBar(
                  images: snapshot.data.images,
                ),
              ),
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: DescSection(
                          data: snapshot.data.descSectionData,
                        ),
                      ),
                      Divider(),
                      Expanded(
                        flex: 3,
                        child: AuthorSection(
                          data: snapshot.data.authorSectionData,
                        ),
                      ),
                      Divider(),
                      Expanded(
                        flex: 4,
                        child: LongDescSection(
                          data: snapshot.data.longDescSectionData,
                        ),
                      ),
                      Divider(),
                      Expanded(
                          flex: 4,
                          child: PricingSection(
                              data: snapshot.data.pricingSectionData)),
                    ],
                  ),
                ),
              ),
              ReservationButton()
            ],
          );
        },
      ),
    );
  }
}
