import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class AuthorSection extends StatelessWidget {
  final Map data;
  const AuthorSection({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              CircleAvatar(backgroundColor: Colors.black45,backgroundImage: NetworkImage(data['author_avatar']),),
              SizedBox(width: 10,),
              Text(
                data['author_name'],
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black45),
              )
            ],
          ),
        ),
        Expanded(
          child: AutoSizeText(
            data['author_desc'],
            style: TextStyle(fontSize: 50, color: Colors.black45),
            minFontSize: 5,
          ),
        )
      ],
    );
  }
}
