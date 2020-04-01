import 'package:flutter/material.dart';

class Indicator extends StatefulWidget {
  final int total;
  final int current;
  Indicator({Key key, this.total, this.current}) : super(key: key);

  @override
  _IndicatorState createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for (var index in List<int>.generate(widget.total, (i) => i))
            Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.current == index ? Colors.white : Colors.white38,
              ),
            ),
        ],
      ),
    );
  }
}
