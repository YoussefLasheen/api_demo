import 'package:flutter/material.dart';

class ReservationButton extends StatelessWidget {
  const ReservationButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FlatButton(
        padding: EdgeInsets.all(0),
        color: Color(0xFF753287),
        child: Text(
          'قم بالحجز الان',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }
}
