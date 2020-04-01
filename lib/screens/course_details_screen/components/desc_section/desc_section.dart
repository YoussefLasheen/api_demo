import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'components/tile_widget.dart';

import 'package:auto_size_text/auto_size_text.dart';

class DescSection extends StatelessWidget {
  final Map data;
  const DescSection({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FittedBox(
              child: Text(
                '# '+ data["interest"],
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Expanded(
            flex: 3,
            child: AutoSizeText(
              data['title'],
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 50
              ),
            ),
          ),
          SizedBox(height: 5,),
          Expanded(
            flex: 1,
            child: TileWidget(text: DateFormat('EEEE, d MMM, yyyy, h:mm a','ar_SA').format(DateTime.parse(data["date"])), icon: Icons.calendar_today,),
          ),
          SizedBox(height: 5,),
          Expanded(
            flex: 1,
            child: TileWidget(text: data["address"],icon:Icons.pin_drop)
          ),
        ],
      ),
    );
  }
}
