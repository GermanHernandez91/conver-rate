import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CurrencyItem extends StatelessWidget {
  final String flag;
  final String alphaCode;
  final String currencyName;

  const CurrencyItem({
    @required this.flag,
    @required this.alphaCode,
    @required this.currencyName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: CachedNetworkImage(
            imageUrl: flag,
            width: 80,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(alphaCode),
            Text(currencyName),
          ],
        ),
        Spacer(),
        IconButton(
          iconSize: 15,
          color: Theme.of(context).accentColor,
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: () {},
        ),
      ],
    );
  }
}
