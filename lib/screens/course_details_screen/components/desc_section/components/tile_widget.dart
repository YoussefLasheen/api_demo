import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const TileWidget({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FittedBox(
          child: Icon(
            icon,
            color: Colors.black45,
          ),
        ),
        SizedBox(width: 5,),
        FittedBox(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
        ),
      ],
    );
  }
}
