import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'components/indicator.dart';

class SlidingAppBar extends StatefulWidget {
  final List images;
  const SlidingAppBar({Key key, this.images}) : super(key: key);

  @override
  _SlidingAppBarState createState() => _SlidingAppBarState();
}

class _SlidingAppBarState extends State<SlidingAppBar> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: CarouselSlider.builder(
            viewportFraction: 1.0,
            itemCount: widget.images.length,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: FractionalOffset.topCenter,
                    image: NetworkImage(
                      widget.images[index].replaceAll('https', 'http'),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Indicator(
          total: widget.images.length,
          current: _current,
        )
      ],
    );
  }
}
