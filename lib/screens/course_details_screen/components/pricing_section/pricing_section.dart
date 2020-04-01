import 'package:flutter/material.dart';

class PricingSection extends StatelessWidget {
  final Map data;
  const PricingSection({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            'تكلفة الدورة',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          ),
        ),
        Expanded(
          flex: 4,
          child: ListView.builder(
            itemCount: data['reservTypes'].length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    data['reservTypes'][index]['name'],
                    style: TextStyle(color: Colors.black45),
                  ),
                  Text(
                    'SAR ' + data['reservTypes'][index]['price'].toString(),
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
