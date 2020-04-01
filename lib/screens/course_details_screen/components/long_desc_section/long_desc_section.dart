import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class LongDescSection extends StatelessWidget {
  final Map data;
  const LongDescSection({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Text(
              'عن الدورة',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            ),
          ),
          Expanded(
            flex: 4,
            child: AutoSizeText(
              data['long_desc'],
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
